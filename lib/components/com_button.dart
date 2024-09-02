import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComButton extends StatelessWidget {
  const ComButton({
    super.key,
    this.textButton,
    required this.onPressed,
  });

  final String? textButton;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 57,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: comSecondaryColor,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
        child: Text(
          textButton ?? "",
          style: ComFontStyle.medium16.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
