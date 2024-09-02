import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComAppBarHome extends StatelessWidget {
  const ComAppBarHome({
    super.key,
    required this.scaffoldGlobalkey,
  });

  final GlobalKey<ScaffoldState> scaffoldGlobalkey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: comPrimaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 30,
            onPressed: () {
              scaffoldGlobalkey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.white,
            ),
          ),
          Text(
            "HOMMY",
            style: ComFontStyle.medium18.copyWith(color: Colors.white),
          ),
          const Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
