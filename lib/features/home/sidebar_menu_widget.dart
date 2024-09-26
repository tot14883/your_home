import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/features/authentication/signin_screen.dart';
import 'package:home_demo/features/post/my_post_screen.dart';
import 'package:home_demo/features/profile/my_profile_screen.dart';
import 'package:home_demo/features/sale/sale.dart';

class SidebarMenu extends StatefulWidget {
  const SidebarMenu({
    super.key,
    required this.onChanged,
    required this.currentPage,
    required this.scaffoldGlobalkey,
  });

  final Function(dynamic) onChanged;
  final int currentPage;
  final GlobalKey<ScaffoldState> scaffoldGlobalkey;

  @override
  State<SidebarMenu> createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  bool select = false;
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
                      InkWell(
                        onTap: () {
                          widget.scaffoldGlobalkey.currentState!.closeDrawer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyProfileScreen(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: const BoxDecoration(
                                color: comTertiaryColor,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/logo/avatar.jpg"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18),
                            Text(
                              "อาริตา อรัญยกุล",
                              style: ComFontStyle.medium18,
                            )
                          ],
                        ),
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
                        icon: Icon(
                          Icons.home_outlined,
                          color: widget.currentPage == 0
                              ? Colors.white
                              : comPrimaryColor,
                        ),
                        textColor: widget.currentPage == 0
                            ? Colors.white
                            : comPrimaryColor,
                        tileColor: widget.currentPage == 0
                            ? comSecondaryColor
                            : Colors.white,
                        onTap: () {
                          widget.onChanged(0);
                          widget.scaffoldGlobalkey.currentState!.closeDrawer();
                        },
                      ),
                      ListTileSidebar(
                        title: "Town Home",
                        icon: Icon(
                          Icons.holiday_village_rounded,
                          color: widget.currentPage == 1
                              ? Colors.white
                              : comPrimaryColor,
                        ),
                        textColor: widget.currentPage == 1
                            ? Colors.white
                            : comPrimaryColor,
                        tileColor: widget.currentPage == 1
                            ? comSecondaryColor
                            : Colors.white,
                        onTap: () {
                          widget.onChanged(1);
                          widget.scaffoldGlobalkey.currentState!.closeDrawer();
                        },
                      ),
                      ListTileSidebar(
                        title: "Condominium",
                        icon: Icon(
                          Icons.apartment_rounded,
                          color: widget.currentPage == 2
                              ? Colors.white
                              : comPrimaryColor,
                        ),
                        textColor: widget.currentPage == 2
                            ? Colors.white
                            : comPrimaryColor,
                        tileColor: widget.currentPage == 2
                            ? comSecondaryColor
                            : Colors.white,
                        onTap: () {
                          widget.onChanged(2);
                          widget.scaffoldGlobalkey.currentState!.closeDrawer();
                        },
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
                        onTap: () {
                          widget.scaffoldGlobalkey.currentState!.closeDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SaleScreen(),
                              ));
                        },
                      ),
                      ListTileSidebar(
                        title: "โพสต์ของฉัน",
                        icon: const Icon(
                          Icons.folder_open_outlined,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {
                          widget.scaffoldGlobalkey.currentState!.closeDrawer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyPostScreen(),
                            ),
                          );
                        },
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
                        onTap: () {
                          widget.scaffoldGlobalkey.currentState!.closeDrawer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyProfileScreen(),
                            ),
                          );
                        },
                      ),
                      ListTileSidebar(
                        title: "ออกจากระบบ",
                        icon: const Icon(
                          Icons.logout_outlined,
                          color: comPrimaryColor,
                        ),
                        textColor: comPrimaryColor,
                        tileColor: Colors.white,
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const SigninScreen(),
                            ),
                            ModalRoute.withName('/'),
                          );
                        },
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
