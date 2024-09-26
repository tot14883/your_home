import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar_home.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_card_view.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_dropdown.dart';
import 'package:home_demo/features/detail/main_detail_screen.dart';
import 'package:home_demo/features/profile/my_profile_screen.dart';
import 'package:home_demo/models/data_home_screen_model.dart';
import 'package:home_demo/models/location_model.dart';
import 'package:home_demo/models/price_model.dart';

class CondomouiumPage extends StatefulWidget {
  const CondomouiumPage({super.key, required this.scaffoldGlobalkey});
  final GlobalKey<ScaffoldState> scaffoldGlobalkey;

  @override
  State<CondomouiumPage> createState() => CondomouiumPageState();
}

class CondomouiumPageState extends State<CondomouiumPage> {
  String? locationVal;
  String? priceVal;

  List<CondoHomeScreenModel> condoData = [];

  @override
  void initState() {
    super.initState();
    condoData.addAll(dataHomeScreen.condo);
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
            ComAppBarHome(
              scaffoldGlobalkey: widget.scaffoldGlobalkey,
              suffixIcon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyProfileScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
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

                            List<CondoHomeScreenModel> search =
                                dataHomeScreen.condo
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
                              condoData.clear();
                              condoData.addAll(search);
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
                        itemCount: condoData.length,
                        itemBuilder: (context, index) {
                          return ComCardView(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainDetailScreen(
                                      id: condoData[index].id, type: ""),
                                )),
                            name: condoData[index].name,
                            badroom: condoData[index].badroom,
                            bathroom: condoData[index].bathroom,
                            location: condoData[index].location,
                            price: condoData[index].price,
                            image: condoData[index].image,
                          );
                        },
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
    );
  }
}
