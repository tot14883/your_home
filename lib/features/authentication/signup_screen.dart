import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/components/com_validator.dart';
import 'package:home_demo/features/home/home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final keyFormData = GlobalKey<FormState>();
    SizedBox height31 = const SizedBox(height: 21);
    return Scaffold(
      backgroundColor: comPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ComAppbar(
                onPop: () => Navigator.pop(context),
                text: "สมัครสมาชิก",
              ),
              height31,
              SvgPicture.asset(
                "assets/images/logo/logo_your_home.svg",
                width: 120,
                height: 120,
              ),
              height31,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(
                    child: Form(
                      key: keyFormData,
                      child: Column(
                        children: [
                          height31,
                          ComTextFormField(
                            hintText: "username",
                            prefixIcon: const Icon(
                              Icons.account_circle_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            validator:
                                ValidatorText.validator("Please enter text"),
                          ),
                          height31,
                          ComTextFormField(
                            hintText: "password",
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            validator:
                                ValidatorText.validator("Please enter text"),
                          ),
                          height31,
                          ComTextFormField(
                            hintText: "name",
                            prefixIcon: const Icon(
                              Icons.face_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            validator:
                                ValidatorText.validator("Please enter text"),
                          ),
                          height31,
                          ComTextFormField(
                            hintText: "lastname",
                            prefixIcon: const Icon(
                              Icons.face_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            validator:
                                ValidatorText.validator("Please enter text"),
                          ),
                          height31,
                          ComTextFormField(
                            hintText: "phone",
                            prefixIcon: const Icon(
                              Icons.smartphone_outlined,
                              size: 24,
                              color: comPrimaryColor,
                            ),
                            validator:
                                ValidatorText.validator("Please enter text"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ComButton(
                      onPressed: () {
                        if (keyFormData.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        }
                      },
                      textButton: "สมัครสมาชิก"),
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
