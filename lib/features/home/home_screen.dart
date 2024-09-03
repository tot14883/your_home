import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/features/home/pages/condomouium_page.dart';
import 'package:home_demo/features/home/pages/home_page.dart';
import 'package:home_demo/features/home/pages/town_home_page.dart';
import 'package:home_demo/features/home/sidebar_menu_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldGlobalkey = GlobalKey<ScaffoldState>();

  int currentPageIndex = 0;
  String? locationVal;
  String? priceVal;

  List<String> listLocation = <String>['One', 'Two', 'Three', 'Four'];
  List<String> listPrice = <String>[
    '1,000,000-1,500,000',
    '1,500,000-2,000,000',
    '2,000,000-2,500,000',
    '2,500,000-3,000,000'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: comPrimaryColor,
      key: scaffoldGlobalkey,
      drawer: SidebarMenu(
        scaffoldGlobalkey: scaffoldGlobalkey,
        currentPage: currentPageIndex,
        onChanged: (p0) {
          setState(() {
            currentPageIndex = p0;
          });
        },
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 2,
                color: comPrimaryColor,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: comPrimaryColor,
                spreadRadius: -5.0,
                blurRadius: 20.0,
              ),
            ]),
        child: NavigationBar(
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          // labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          indicatorColor: comSecondaryColor,
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: comPrimaryColor,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.holiday_village_rounded,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.holiday_village_rounded,
                color: comPrimaryColor,
              ),
              label: 'Town Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.apartment_rounded,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.apartment_rounded,
                color: comPrimaryColor,
              ),
              label: 'Condominium',
            ),
          ],
        ),
      ),
      body: <Widget>[
        /// Home page
        HomePage(
          scaffoldGlobalkey: scaffoldGlobalkey,
        ),

        /// Town home page
        TownHomePage(
          scaffoldGlobalkey: scaffoldGlobalkey,
        ),

        /// condomouium page
        CondomouiumPage(
          scaffoldGlobalkey: scaffoldGlobalkey,
        )
      ][currentPageIndex],
    );
  }
}
