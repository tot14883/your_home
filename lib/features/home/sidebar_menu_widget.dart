import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/logo/avatar.svg",
                            width: 64,
                            height: 64,
                          ),
                          // Container(
                          //   width: 64,
                          //   height: 64,
                          //   decoration: const BoxDecoration(
                          //     color: Colors.pink,
                          //     shape: BoxShape.circle,
                          //   ),
                          // ),
                          const SizedBox(width: 18),
                          Text(
                            "อาริตา อรัญยกุล",
                            style: ComFontStyle.medium18
                                .copyWith(color: comPrimaryColor),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      const Divider(color: comPrimaryColor),
                      const SizedBox(height: 13),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleSidebar(title: "บ้าน"),
                      const SizedBox(height: 13),
                      ListTileSidebar(
                        title: "บ้านเดี่ยว",
                        icon: const Icon(
                          Icons.home_outlined,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {},
                      ),
                      ListTileSidebar(
                        title: "Town Home",
                        icon: const Icon(
                          Icons.holiday_village_rounded,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {},
                      ),
                      ListTileSidebar(
                        title: "Condominium",
                        icon: const Icon(
                          Icons.apartment_rounded,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: comSecondaryColor,
                        onTap: () {},
                      ),
                      const Divider(color: comPrimaryColor),
                      const SizedBox(height: 13),
                      const TitleSidebar(title: "ขาย"),
                      const SizedBox(height: 13),
                      ListTileSidebar(
                        title: "ขายบ้าน",
                        icon: const Icon(
                          Icons.sell_outlined,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {},
                      ),
                      ListTileSidebar(
                        title: "โพสต์ของฉัน",
                        icon: const Icon(
                          Icons.folder_open_outlined,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {},
                      ),
                      const Divider(color: comPrimaryColor),
                      const SizedBox(height: 13),
                      const TitleSidebar(title: "ข้อมูลของฉัน"),
                      const SizedBox(height: 13),
                      ListTileSidebar(
                        title: "ข้อมูลของฉัน",
                        icon: const Icon(
                          Icons.account_circle_outlined,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {},
                      ),
                      ListTileSidebar(
                        title: "ออกจากระบบ",
                        icon: const Icon(
                          Icons.logout_outlined,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileSidebar extends StatelessWidget {
  const ListTileSidebar({
    super.key,
    required this.title,
    required this.icon,
    required this.textColor,
    required this.tileColor,
    this.onTap,
  });
  final String title;
  final Icon icon;
  final Color textColor, tileColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: icon,
      title: Text(title),
      textColor: textColor,
      titleTextStyle: ComFontStyle.medium16,
      tileColor: tileColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}

class TitleSidebar extends StatelessWidget {
  const TitleSidebar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21),
      child: Text(
        title,
        style: ComFontStyle.medium16.copyWith(color: comPrimaryColor),
      ),
    );
  }
}
