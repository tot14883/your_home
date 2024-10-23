import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComShapeCircleLocation extends StatelessWidget {
  const ComShapeCircleLocation({
    super.key,
    required this.titleText,
    required this.detailText,
  });

  final String titleText, detailText;

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
          child: Center(
            child: Text(
              titleText,
              style: ComFontStyle.medium16.copyWith(color: comPrimaryColor),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          detailText,
          style: ComFontStyle.regular14.copyWith(color: comPrimaryColor),
        ),
      ],
    );
  }
}
