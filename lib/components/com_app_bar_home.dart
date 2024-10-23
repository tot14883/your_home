import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComAppBarHome extends StatelessWidget {
  const ComAppBarHome({
    super.key,
    required this.scaffoldGlobalkey,
    required this.suffixIcon,
  });

  final GlobalKey<ScaffoldState> scaffoldGlobalkey;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: comPrimaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: Row(
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
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              "YOURHOME",
              style: ComFontStyle.medium18.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          suffixIcon,
        ],
      ),
    );
  }
}
