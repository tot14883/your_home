import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/features/profile/widgets/contact_widget.dart';
import 'package:home_demo/features/profile/widgets/name_widget.dart';
import 'package:home_demo/features/profile/widgets/username_pass_widget.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

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
                text: "ข้อมูลของฉัน",
                onPop: () => Navigator.pop(context),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, bottom: 32),
                  child: Column(
                    children: [
                      SizedBox(height: 43),
                      NameWidget(),
                      SizedBox(height: 12),
                      ContactWidget(),
                      SizedBox(height: 12),
                      UsernamePassWidget(),
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
