import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComShapeCircle extends StatelessWidget {
  const ComShapeCircle({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 79,
          height: 79,
          decoration: const BoxDecoration(
            color: comTertiaryColor,
            shape: BoxShape.circle,
          ),
          child: Center(child: icon),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: ComFontStyle.regular14.copyWith(color: comPrimaryColor),
        ),
      ],
    );
  }
}
