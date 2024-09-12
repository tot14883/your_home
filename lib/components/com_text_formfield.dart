import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComTextFormField extends StatelessWidget {
  const ComTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.lable,
    this.onChanged,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.maxLines = 1,
    this.validator,
    this.focusNode,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? lable;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final int? maxLines;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      maxLines: maxLines,
      validator: validator,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefixIcon,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(13.00)),
            borderSide: BorderSide(color: comPrimaryColor)),
        disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(13.00)),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(13.00)),
            borderSide: BorderSide(color: comPrimaryColor)),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(13.00)),
            borderSide: BorderSide(color: comSecondaryColor)),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(13.00)),
            borderSide: BorderSide(color: comSecondaryColor)),
        errorStyle: ComFontStyle.regular14.copyWith(color: comSecondaryColor),
        hintText: hintText,
        hintStyle: ComFontStyle.medium16.copyWith(color: comPrimaryColor),
      ),
    );
  }
}
