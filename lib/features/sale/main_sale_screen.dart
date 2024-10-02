import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/features/sale/sale_screen.dart';

class MainSaleScreen extends StatefulWidget {
  const MainSaleScreen({super.key});

  @override
  State<MainSaleScreen> createState() => MainSaleScreenState();
}

class MainSaleScreenState extends State<MainSaleScreen> {
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
                text: "ขาย",
                onPop: () => Navigator.pop(context),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 24, bottom: 31),
                  child: Column(
                    children: [
                      GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: <Widget>[
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SaleScreen(),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: comPrimaryColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.home_outlined,
                                    color: comPrimaryColor,
                                    size: 24,
                                  ),
                                  Text(
                                    "Home",
                                    style: ComFontStyle.medium16
                                        .copyWith(color: comPrimaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SaleScreen(),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: comPrimaryColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.holiday_village_rounded,
                                    color: comPrimaryColor,
                                    size: 24,
                                  ),
                                  Text(
                                    "Town Home",
                                    style: ComFontStyle.medium16.copyWith(
                                      color: comPrimaryColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SaleScreen(),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: comPrimaryColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.apartment_rounded,
                                    color: comPrimaryColor,
                                    size: 24,
                                  ),
                                  Text(
                                    "Condominium",
                                    style: ComFontStyle.medium16
                                        .copyWith(color: comPrimaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
