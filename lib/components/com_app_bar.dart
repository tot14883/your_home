import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComAppbar extends StatelessWidget {
  const ComAppbar({
    super.key,
    this.iconBackColor,
    this.textColor,
  });

  final Color? iconBackColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: iconBackColor ?? comPrimaryColor,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "สมัครสมาชิก",
                style: ComFontStyle.medium18
                    .copyWith(color: textColor ?? comPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
