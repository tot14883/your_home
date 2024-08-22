import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_text_formfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox height13 = const SizedBox(height: 13);
    SizedBox height31 = const SizedBox(height: 31);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const ComAppbar(
                iconBackColor: Colors.white,
                textColor: Colors.white,
              ),
              height31,
              SvgPicture.asset(
                "assets/images/logo/logo_hommy.svg",
                width: 117,
                height: 117,
              ),
              height31,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      height31,
                      const ComTextFormField(
                        hintText: "username",
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      height31,
                      const ComTextFormField(
                        hintText: "password",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      height31,
                      const ComTextFormField(
                        hintText: "name",
                        prefixIcon: Icon(
                          Icons.face_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      height31,
                      const ComTextFormField(
                        hintText: "lastname",
                        prefixIcon: Icon(
                          Icons.face_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      height31,
                      const ComTextFormField(
                        hintText: "phone",
                        prefixIcon: Icon(
                          Icons.smartphone_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ComButton(
                      onPressed: () {}, textButton: const Text("สมัครสมาชิก")),
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
