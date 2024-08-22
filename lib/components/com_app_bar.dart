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
      height: 56,
      color: comPrimaryColor,
      // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              // color: Colors.amber,
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: iconBackColor ?? comPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.pink,
              // padding: EdgeInsets.symmetric(
              //     horizontal: MediaQuery.sizeOf(context).width / 0.2),
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "สมัครสมาชิก",
                style: ComFontStyle.medium18
                    .copyWith(color: textColor ?? comPrimaryColor),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
