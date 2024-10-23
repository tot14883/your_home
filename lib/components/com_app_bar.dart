import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComAppbar extends StatelessWidget {
  const ComAppbar({
    required this.text,
    super.key,
    this.iconBackColor,
    this.textColor,
    this.onPop,
  });

  final String text;
  final Color? iconBackColor;
  final Color? textColor;
  final VoidCallback? onPop;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: comPrimaryColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: onPop,
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: iconBackColor ?? Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.pink,

              margin: const EdgeInsets.only(right: 50),
              child: Text(
                text,
                style: ComFontStyle.medium18.copyWith(
                  color: textColor ?? Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
