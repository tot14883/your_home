import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: Icon(Icons.menu_outlined),
                  ),
                  Text(
                    "HOMMY",
                    style: ComFontStyle.medium18,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "บ้านเดี๋ยว",
                          style: ComFontStyle.regular16,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: double.infinity,
                          height: 220,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Card(
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor: Colors.blue.withAlpha(30),
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    width: 162,
                                    child: Column(
                                      children: [
                                        Expanded(child: Container()),
                                        Container(
                                          color: comPrimaryColor,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9, vertical: 9),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "หมู่บ้านแสนสุข",
                                                style: ComFontStyle.medium14
                                                    .copyWith(
                                                        color: Colors.white),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.bed_outlined,
                                                    size: 18,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "3",
                                                    style: ComFontStyle
                                                        .regular14
                                                        .copyWith(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                  SizedBox(
                                                    width: 21,
                                                  ),
                                                  Icon(
                                                    Icons.wc_outlined,
                                                    size: 18,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "2",
                                                    style: ComFontStyle
                                                        .regular14
                                                        .copyWith(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "กรุงเทพมหานคร",
                                                style: ComFontStyle.regular14
                                                    .copyWith(
                                                        color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
