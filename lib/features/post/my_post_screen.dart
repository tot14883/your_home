import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class MyPostScreen extends StatefulWidget {
  const MyPostScreen({super.key});

  @override
  State<MyPostScreen> createState() => MyPostScreenState();
}

class MyPostScreenState extends State<MyPostScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  bool onOpen = false;

  final items = List<String>.generate(20, (i) => 'หมู่บ้านแสนสุข ${i + 1}');

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
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Scaffold(
                      backgroundColor: Colors.white,
                      floatingActionButton: FloatingActionButton(
                        backgroundColor: comPrimaryColor,
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.add,
                          size: 24,
                          color: comSecondaryColor,
                        ),
                        onPressed: () {},
                      ),
                      body: Container(
                        padding: const EdgeInsets.only(
                            left: 24, right: 23, bottom: 31),
                        child: Column(
                          children: [
                            const SizedBox(height: 8),
                            onOpen == false ? closeBtn() : openBtn(),
                            const SizedBox(height: 12),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return Dismissible(
                                    key: Key(items[index]),
                                    direction: DismissDirection.endToStart,
                                    onDismissed: (direction) {
                                      setState(() {
                                        items.removeAt(index);
                                      });
                                    },
                                    background: Container(
                                      color: comSecondaryColor,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        padding:
                                            const EdgeInsets.only(right: 21),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.delete_outline,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                            Text(
                                              "Remove",
                                              style: ComFontStyle.medium14
                                                  .copyWith(
                                                      color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      // clipBehavior: Clip.antiAlias,
                                      color: Colors.white,
                                      elevation: 0,
                                      shape: const Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: comPrimaryColor)),
                                      child: ListTile(
                                        leading: Image.asset(
                                          "assets/images/homes/home_1.jpg",
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                        title: Text(
                                          items[index],
                                          style: ComFontStyle.medium16
                                              .copyWith(color: comPrimaryColor),
                                        ),
                                        subtitle: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'ที่อยู่ :',
                                              style: TextStyle(
                                                  color: comPrimaryColor),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              'วันที่โพสต์ :',
                                              style: TextStyle(
                                                  color: comPrimaryColor),
                                            ),
                                          ],
                                        ),
                                        isThreeLine: true,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      child: Text("2"),
                    ),
                    const SizedBox(
                      child: Text("3"),
                    ),
                  ],
                ),
              )
            ],
          ),
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
        // alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
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
