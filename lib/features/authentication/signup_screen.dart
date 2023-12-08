import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_text_formfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox height13 = const SizedBox(height: 13);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: comPrimaryColor,
          child: Column(
            children: [
              const ComAppbar(
                iconBackColor: Colors.white,
                textColor: Colors.white,
              ),
              height13,
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: comSecondaryColor),
              ),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Spacer(),
                      ComTextFormField(
                        hintText: "username",
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      Spacer(),
                      ComTextFormField(
                        hintText: "password",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      Spacer(),
                      ComTextFormField(
                        hintText: "name",
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      Spacer(),
                      ComTextFormField(
                        hintText: "lastname",
                        prefixIcon: Icon(
                          Icons.group_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      Spacer(),
                      ComTextFormField(
                        hintText: "email",
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      Spacer(),
                      ComTextFormField(
                        hintText: "phone",
                        prefixIcon: Icon(
                          Icons.smartphone_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ComButton(
                        onPressed: () {},
                        textButton: const Text("สมัครสมาชิก")),
                  ),
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
