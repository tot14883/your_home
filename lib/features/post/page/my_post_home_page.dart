import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/features/sale/sale.dart';
import 'package:home_demo/models/data_home_screen_model.dart';

class MyPostHomePage extends StatefulWidget {
  const MyPostHomePage({super.key});

  @override
  State<MyPostHomePage> createState() => _MyPostHomePageState();
}

class _MyPostHomePageState extends State<MyPostHomePage> {
  bool onOpen = false;

  List<HomeHomeScreenModel> home = [];

  @override
  void initState() {
    super.initState();
    home = dataHomeScreen.home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: onOpen == false
          ? FloatingActionButton(
              backgroundColor: comPrimaryColor,
              shape: const CircleBorder(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SaleScreen(),
                  ),
                );
              },
              child: const Icon(
                Icons.add,
                size: 24,
                color: comSecondaryColor,
              ),
            )
          : null,
      body: Container(
        padding: const EdgeInsets.only(left: 24, right: 23, bottom: 31),
        child: Column(
          children: [
            const SizedBox(height: 8),
            onOpen == false ? closeBtn() : openBtn(),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: home.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(home[index].id),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      setState(() {
                        home.removeAt(index);
                      });
                    },
                    background: Container(
                      color: comSecondaryColor,
                      child: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 21),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                              size: 24,
                            ),
                            Text(
                              "Remove",
                              style: ComFontStyle.medium14
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        if (onOpen == true)
                          Checkbox(
                            value: home[index].selectDel,
                            onChanged: (value) {
                              List<HomeHomeScreenModel> selectHome = home.map(
                                (e) {
                                  if (e.id == home[index].id) {
                                    return e.copyWith(selectDel: value);
                                  } else {
                                    return e;
                                  }
                                },
                              ).toList();
                              setState(() {
                                home = selectHome;
                              });
                            },
                          ),
                        Expanded(
                          child: Card(
                            margin: EdgeInsets.zero,
                            // clipBehavior: Clip.antiAlias,
                            color: Colors.white,
                            elevation: 0,
                            shape: const Border(
                                bottom: BorderSide(
                                    width: 1, color: comPrimaryColor)),
                            child: ListTile(
                              leading: Image.asset(
                                home[index].image,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                home[index].name,
                                style: ComFontStyle.medium16
                                    .copyWith(color: comPrimaryColor),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ที่อยู่ :${home[index].location}',
                                    style:
                                        const TextStyle(color: comPrimaryColor),
                                  ),
                                  const SizedBox(height: 2),
                                  const Text(
                                    'วันที่โพสต์ :',
                                    style: TextStyle(color: comPrimaryColor),
                                  ),
                                ],
                              ),
                              isThreeLine: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Align openBtn() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 100,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    home = home
                        .where((element) => element.selectDel == false)
                        .toList();

                    if (home.isEmpty) {
                      onOpen = !onOpen;
                    }
                  });
                },
                child: Container(
                  height: 32,
                  decoration: const BoxDecoration(
                    color: comPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: const Icon(
                    Icons.delete_outline,
                    color: comSecondaryColor,
                    size: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 3),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    onOpen = !onOpen;
                  });
                },
                child: Container(
                  height: 32,
                  decoration: const BoxDecoration(
                    color: comPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: comSecondaryColor,
                    size: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Align closeBtn() {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          setState(() {
            onOpen = !onOpen;
          });
        },
        child: Container(
          width: 100,
          height: 32,
          // alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: comPrimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                        color: comSecondaryColor, shape: BoxShape.circle),
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
