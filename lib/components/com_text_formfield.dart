import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComTextFormField extends StatelessWidget {
  const ComTextFormField({
    super.key,
    this.hintText,
    this.lable,
    this.onChanged,
    this.onFieldSubmitted,
    this.prefixIcon,
  });

  final String? hintText;
  final String? lable;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: comQuaternaryColor,
          prefixIcon: prefixIcon,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(13.00)),
              borderSide: BorderSide(color: Colors.transparent)),
          disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(13.00)),
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(13.00)),
              borderSide: BorderSide(color: Colors.transparent)),
          hintText: hintText,
          hintStyle: ComFontStyle.medium16),
    );
  }
}
