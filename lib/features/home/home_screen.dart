import 'package:flutter/material.dart';
import 'package:home_demo/components/com_card_more.dart';
import 'package:home_demo/components/com_card_view.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/features/detail/main_detail_screen.dart';
import 'package:home_demo/features/home/sidebar_menu_widget.dart';
import 'package:home_demo/models/data_home_screen_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldGlobalkey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldGlobalkey,
      drawer: const SidebarMenu(),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            Color(0xFFFAE7C9),
            Color(0xFFE1C78F),
            Color(0xFFB0926A),
            Color(0xFF706233),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 30,
                      onPressed: () {
                        scaffoldGlobalkey.currentState!.openDrawer();
                      },
                      icon: const Icon(Icons.menu_outlined),
                    ),
                    Text(
                      "HOMMY",
                      style: ComFontStyle.medium18,
                    ),
                    const Icon(
                      Icons.account_circle_outlined,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "บ้านเดี๋ยว",
                              style: ComFontStyle.regular16,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 220,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ...List.generate(
                                    dataHomeScreen.home.length,
                                    (index) => ComCardView(
                                      name: dataHomeScreen.home[index].name,
                                      badroom:
                                          dataHomeScreen.home[index].badroom,
                                      bathroom:
                                          dataHomeScreen.home[index].bathroom,
                                      location:
                                          dataHomeScreen.home[index].location,
                                      image: dataHomeScreen.home[index].image,
                                    ),
                                  ),
                                  ComCardMore(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MainDetailScreen(),
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Text(
                              "ทาวน์เฮ้าส์",
                              style: ComFontStyle.regular16,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 220,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ...List.generate(
                                    dataHomeScreen.townhouse.length,
                                    (index) => ComCardView(
                                      name:
                                          dataHomeScreen.townhouse[index].name,
                                      badroom: dataHomeScreen
                                          .townhouse[index].badroom,
                                      bathroom: dataHomeScreen
                                          .townhouse[index].bathroom,
                                      location: dataHomeScreen
                                          .townhouse[index].location,
                                      image:
                                          dataHomeScreen.townhouse[index].image,
                                    ),
                                  ),
                                  ComCardMore(
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Text(
                              "คอนโอมิเนียม",
                              style: ComFontStyle.regular16,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 220,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ...List.generate(
                                    dataHomeScreen.condo.length,
                                    (index) => ComCardView(
                                      name: dataHomeScreen.condo[index].name,
                                      badroom:
                                          dataHomeScreen.condo[index].badroom,
                                      bathroom:
                                          dataHomeScreen.condo[index].bathroom,
                                      location:
                                          dataHomeScreen.condo[index].location,
                                      image: dataHomeScreen.condo[index].image,
                                    ),
                                  ),
                                  ComCardMore(
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
