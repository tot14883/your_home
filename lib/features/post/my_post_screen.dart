import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/features/post/page/my_post_condo_page.dart';
import 'package:home_demo/features/post/page/my_post_home_page.dart';
import 'package:home_demo/features/post/page/my_post_townhome_page.dart';

class MyPostScreen extends StatefulWidget {
  const MyPostScreen({super.key});

  @override
  State<MyPostScreen> createState() => MyPostScreenState();
}

class MyPostScreenState extends State<MyPostScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: comPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ComAppbar(
                text: "โพสต์ของฉัน",
                onPop: () => Navigator.pop(context),
              ),
              TabBar(
                // unselectedLabelColor: Colors.black,
                // labelColor: Colors.red,

                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.home_outlined,
                      color: comPrimaryColor,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.holiday_village_rounded,
                      color: comPrimaryColor,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.apartment_rounded,
                      color: comPrimaryColor,
                    ),
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const <Widget>[
                    MyPostHomePage(),
                    MyPostTownhomePage(),
                    MyPostCondoPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
