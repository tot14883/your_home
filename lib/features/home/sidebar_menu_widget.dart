import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: comSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      shape: const Border(
                        top: BorderSide(color: Colors.white, width: 0.7),
                      ),
                      leading: const Icon(
                        Icons.cottage_rounded,
                        color: Colors.white,
                      ),
                      title: const Text("บ้านเดี่ยว"),
                      textColor: Colors.white,
                      titleTextStyle: ComFontStyle.medium16,
                    ),
                    ListTile(
                      onTap: () {},
                      shape: const Border(
                        top: BorderSide(color: Colors.white, width: 0.7),
                      ),
                      leading: const Icon(
                        Icons.holiday_village_rounded,
                        color: Colors.white,
                      ),
                      title: const Text("ทาวน์เฮ้าส์"),
                      textColor: Colors.white,
                      titleTextStyle: ComFontStyle.medium16,
                    ),
                    ListTile(
                      onTap: () {},
                      shape: const Border(
                        top: BorderSide(color: Colors.white, width: 0.7),
                        bottom: BorderSide(color: Colors.white, width: 0.5),
                      ),
                      leading: const Icon(
                        Icons.apartment_rounded,
                        color: Colors.white,
                      ),
                      title: const Text("คอนโดมิเนียม"),
                      textColor: Colors.white,
                      titleTextStyle: ComFontStyle.medium16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.login_rounded,
              color: Colors.white,
            ),
            title: const Text("Login"),
            textColor: Colors.white,
            titleTextStyle: ComFontStyle.medium16,
          ),
        ],
      ),
    );
  }
}
