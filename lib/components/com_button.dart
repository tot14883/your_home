import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';

class ComButton extends StatelessWidget {
  const ComButton({
    super.key,
    this.textButton,
    required this.onPressed,
  });

  final Widget? textButton;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: comSecondaryColor,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
        child: textButton,
      ),
    );
  }
}
