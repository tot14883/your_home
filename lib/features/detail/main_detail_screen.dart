import 'package:flutter/material.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_card_view.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/components/com_text_formfield.dart';

import 'package:home_demo/models/data_home_screen_model.dart';

class MainDetailScreen extends StatelessWidget {
  const MainDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Color(0xFFFAE7C9),
              Color(0xFFE1C78F),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 21, bottom: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 22,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "บ้านเดี่ยว",
                        style: ComFontStyle.medium18,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    children: [
                      const ComTextFormField(
                        prefixIcon: Icon(
                          Icons.location_on_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                        hintText: "ทำเลที่ตั้ง",
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      const ComTextFormField(
                        prefixIcon: Icon(
                          Icons.payments,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                        hintText: "ราคา",
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      ComButton(textButton: "ค้นหา", onPressed: () {}),
                      const SizedBox(height: 21),
                      Expanded(
                        child: GridView.count(
                          // physics: const NeverScrollableScrollPhysics(),
                          // shrinkWrap: true,
                          primary: false,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: <Widget>[
                            ...List.generate(
                              dataHomeScreen.home.length,
                              (index) => ComCardView(
                                name: dataHomeScreen.home[index].name,
                                badroom: dataHomeScreen.home[index].badroom,
                                bathroom: dataHomeScreen.home[index].bathroom,
                                location: dataHomeScreen.home[index].location,
                                image: dataHomeScreen.home[index].image,
                              ),
                            ).toList(),
                          ],
                        ),
                      )
                    ],
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
