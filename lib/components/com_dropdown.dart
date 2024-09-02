import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComDropDown extends StatelessWidget {
  const ComDropDown({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.value,
    required this.items,
    required this.selectedItemBuilder,
    required this.onChanged,
  });

  final String? hintText;
  final Icon? prefixIcon;
  final dynamic value;
  final List<ComDropdownMenuItem> items;
  final List<ComDropdownMenuItem> selectedItemBuilder;
  // final List<Widget> Function(BuildContext) selectedItemBuilder;
  final Function(dynamic) onChanged;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      alignedDropdown: true,
      child: DropdownButtonFormField(
        dropdownColor: Colors.white,
        isExpanded: true,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintStyle: const TextStyle(
            color: comPrimaryColor,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: comPrimaryColor),
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: comPrimaryColor),
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
          ),
        ),
        style: ComFontStyle.medium16.copyWith(
          color: comPrimaryColor,
        ),
        hint: Text(
          hintText ?? "",
          style: const TextStyle(
            color: comPrimaryColor,
          ),
        ),
        value: value,
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          size: 24,
          color: comPrimaryColor,
        ),
        selectedItemBuilder: (BuildContext context) {
          return selectedItemBuilder
              .map<Widget>((ComDropdownMenuItem<dynamic> item) {
            return DropdownMenuItem(value: item.value, child: Text(item.text));
          }).toList();
        },
        items: [
          ...List.generate(
            items.length,
            (index) {
              return DropdownMenuItem(
                value: items[index].value,
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: value == items[index].value
                          ? comSecondaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    items[index].text,
                    style: TextStyle(
                      color: items[index].value == value
                          ? Colors.white
                          : comPrimaryColor,
                    ),
                  ),
                ),
              );
            },
          )
        ],
        onChanged: (value) {
          onChanged(value);
        },
      ),
    );
  }
}

class ComDropdownMenuItem<T> {
  final T value;
  final String text;

  ComDropdownMenuItem({required this.text, required this.value});
}
