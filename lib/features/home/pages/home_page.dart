import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar_home.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_card_view.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_dropdown.dart';
import 'package:home_demo/models/data_home_screen_model.dart';
import 'package:home_demo/models/location_model.dart';
import 'package:home_demo/models/price_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.scaffoldGlobalkey});

  final GlobalKey<ScaffoldState> scaffoldGlobalkey;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? locationVal;
  String? priceVal;

  List<HomeHomeScreenModel> homeData = [];

  @override
  void initState() {
    super.initState();
    homeData.addAll(dataHomeScreen.home);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
    return SafeArea(
      bottom: false,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ComAppBarHome(scaffoldGlobalkey: widget.scaffoldGlobalkey),
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
                        onPressed: () {
                          if (locationVal != null && priceVal != null) {
                            final price = priceVal!.split("-");

                            List<HomeHomeScreenModel> search =
                                dataHomeScreen.home
                                    .where(
                                      (element) =>
                                          element.location == locationVal &&
                                          int.parse(element.price) >=
                                              int.parse(price[0]) &&
                                          int.parse(element.price) <=
                                              int.parse(price[1]),
                                    )
                                    .toList();

                            setState(() {
                              homeData.clear();
                              homeData.addAll(search);
                            });
                          }
                        },
                      ),
                      const SizedBox(height: 38),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: (itemWidth / itemHeight),
                        ),
                        itemCount: homeData.length,
                        itemBuilder: (context, index) {
                          return ComCardView(
                            name: homeData[index].name,
                            badroom: homeData[index].badroom,
                            bathroom: homeData[index].bathroom,
                            location: homeData[index].location,
                            price: homeData[index].price,
                            image: homeData[index].image,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
