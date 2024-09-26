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
    this.onSaved,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.validator,
    this.focusNode,
    this.enabled,
    this.obscureText = false,
    this.textAlign,
    this.maxLength,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? lable;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final bool? enabled;
  final bool obscureText;
  final TextAlign? textAlign;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (lable != null)
          Text(
            lable ?? "",
            style: ComFontStyle.medium16,
          ),
        const SizedBox(height: 8),
        TextFormField(
            maxLength: maxLength,
            textAlign: textAlign ?? TextAlign.start,
            obscureText: obscureText,
            enabled: enabled,
            focusNode: focusNode,
            controller: controller,
            onFieldSubmitted: onFieldSubmitted,
            onChanged: onChanged,
            onSaved: onSaved,
            maxLines: maxLines,
            validator: validator,
            style: ComFontStyle.medium16.copyWith(color: comPrimaryColor),
            decoration: InputDecoration(
              counterText: "",
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
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
              errorStyle:
                  ComFontStyle.regular14.copyWith(color: comSecondaryColor),
              hintText: hintText,
              hintStyle: ComFontStyle.medium16.copyWith(color: comPrimaryColor),
            )),
      ],
    );
  }
}
