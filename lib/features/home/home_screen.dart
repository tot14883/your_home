import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar_home.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_card_view.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_dropdown.dart';
import 'package:home_demo/features/home/sidebar_menu_widget.dart';
import 'package:home_demo/models/data_home_screen_model.dart';

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
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
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
        SafeArea(
          bottom: false,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                ComAppBarHome(scaffoldGlobalkey: scaffoldGlobalkey),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 24),
                          ComDropDown(
                            hintText: "Location",
                            prefixIcon: const Icon(
                              Icons.location_on_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            value: locationVal,
                            selectedItemBuilder: [
                              ...List.generate(
                                listLocation.length,
                                (index) => ComDropdownMenuItem(
                                  value: listLocation[index],
                                  text: listLocation[index],
                                ),
                              )
                            ],
                            items: [
                              ...List.generate(
                                listLocation.length,
                                (index) => ComDropdownMenuItem(
                                  value: listLocation[index],
                                  text: listLocation[index],
                                ),
                              )
                            ],
                            onChanged: (p0) {
                              setState(() {
                                locationVal = p0;
                              });
                            },
                          ),
                          const SizedBox(height: 18),
                          ComDropDown(
                            hintText: "Price",
                            prefixIcon: const Icon(
                              Icons.attach_money_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            value: priceVal,
                            selectedItemBuilder: [
                              ...List.generate(
                                listPrice.length,
                                (index) => ComDropdownMenuItem(
                                  value: listPrice[index],
                                  text: listPrice[index],
                                ),
                              )
                            ],
                            items: [
                              ...List.generate(
                                listPrice.length,
                                (index) => ComDropdownMenuItem(
                                  value: listPrice[index],
                                  text: listPrice[index],
                                ),
                              )
                            ],
                            onChanged: (p0) {
                              setState(() {
                                priceVal = p0;
                              });
                            },
                          ),
                          const SizedBox(height: 28),
                          ComButton(
                            textButton: "ค้นหา",
                            onPressed: () {},
                          ),
                          const SizedBox(height: 38),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: (itemWidth / itemHeight),
                            ),
                            itemCount: dataHomeScreen.home.length,
                            itemBuilder: (context, index) {
                              return ComCardView(
                                name: dataHomeScreen.home[index].name,
                                badroom: dataHomeScreen.home[index].badroom,
                                bathroom: dataHomeScreen.home[index].bathroom,
                                location: dataHomeScreen.home[index].location,
                                image: dataHomeScreen.home[index].image,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        /// Town home page
        SafeArea(
          bottom: false,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                ComAppBarHome(scaffoldGlobalkey: scaffoldGlobalkey),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 24),
                          ComDropDown(
                            hintText: "Location",
                            prefixIcon: const Icon(
                              Icons.location_on_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            value: locationVal,
                            selectedItemBuilder: [
                              ...List.generate(
                                listLocation.length,
                                (index) => ComDropdownMenuItem(
                                  value: listLocation[index],
                                  text: listLocation[index],
                                ),
                              )
                            ],
                            items: [
                              ...List.generate(
                                listLocation.length,
                                (index) => ComDropdownMenuItem(
                                  value: listLocation[index],
                                  text: listLocation[index],
                                ),
                              )
                            ],
                            onChanged: (p0) {
                              setState(() {
                                locationVal = p0;
                              });
                            },
                          ),
                          const SizedBox(height: 18),
                          ComDropDown(
                            hintText: "Price",
                            prefixIcon: const Icon(
                              Icons.attach_money_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            value: priceVal,
                            selectedItemBuilder: [
                              ...List.generate(
                                listPrice.length,
                                (index) => ComDropdownMenuItem(
                                  value: listPrice[index],
                                  text: listPrice[index],
                                ),
                              )
                            ],
                            items: [
                              ...List.generate(
                                listPrice.length,
                                (index) => ComDropdownMenuItem(
                                  value: listPrice[index],
                                  text: listPrice[index],
                                ),
                              )
                            ],
                            onChanged: (p0) {
                              setState(() {
                                priceVal = p0;
                              });
                            },
                          ),
                          const SizedBox(height: 28),
                          ComButton(
                            textButton: "ค้นหา",
                            onPressed: () {},
                          ),
                          const SizedBox(height: 38),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: (itemWidth / itemHeight),
                            ),
                            itemCount: dataHomeScreen.townhouse.length,
                            itemBuilder: (context, index) {
                              return ComCardView(
                                name: dataHomeScreen.townhouse[index].name,
                                badroom:
                                    dataHomeScreen.townhouse[index].badroom,
                                bathroom:
                                    dataHomeScreen.townhouse[index].bathroom,
                                location:
                                    dataHomeScreen.townhouse[index].location,
                                image: dataHomeScreen.townhouse[index].image,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        /// condomouium page
        SafeArea(
          bottom: false,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                ComAppBarHome(scaffoldGlobalkey: scaffoldGlobalkey),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 24),
                          ComDropDown(
                            hintText: "Location",
                            prefixIcon: const Icon(
                              Icons.location_on_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            value: locationVal,
                            selectedItemBuilder: [
                              ...List.generate(
                                listLocation.length,
                                (index) => ComDropdownMenuItem(
                                  value: listLocation[index],
                                  text: listLocation[index],
                                ),
                              )
                            ],
                            items: [
                              ...List.generate(
                                listLocation.length,
                                (index) => ComDropdownMenuItem(
                                  value: listLocation[index],
                                  text: listLocation[index],
                                ),
                              )
                            ],
                            onChanged: (p0) {
                              setState(() {
                                locationVal = p0;
                              });
                            },
                          ),
                          const SizedBox(height: 18),
                          ComDropDown(
                            hintText: "Price",
                            prefixIcon: const Icon(
                              Icons.attach_money_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            value: priceVal,
                            selectedItemBuilder: [
                              ...List.generate(
                                listPrice.length,
                                (index) => ComDropdownMenuItem(
                                  value: listPrice[index],
                                  text: listPrice[index],
                                ),
                              )
                            ],
                            items: [
                              ...List.generate(
                                listPrice.length,
                                (index) => ComDropdownMenuItem(
                                  value: listPrice[index],
                                  text: listPrice[index],
                                ),
                              )
                            ],
                            onChanged: (p0) {
                              setState(() {
                                priceVal = p0;
                              });
                            },
                          ),
                          const SizedBox(height: 28),
                          ComButton(
                            textButton: "ค้นหา",
                            onPressed: () {},
                          ),
                          const SizedBox(height: 38),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: (itemWidth / itemHeight),
                            ),
                            itemCount: dataHomeScreen.condo.length,
                            itemBuilder: (context, index) {
                              return ComCardView(
                                name: dataHomeScreen.condo[index].name,
                                badroom: dataHomeScreen.condo[index].badroom,
                                bathroom: dataHomeScreen.condo[index].bathroom,
                                location: dataHomeScreen.condo[index].location,
                                image: dataHomeScreen.condo[index].image,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}
