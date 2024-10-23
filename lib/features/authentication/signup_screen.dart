import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/components/com_validator.dart';
import 'package:home_demo/features/home/home_screen.dart';
import 'package:home_demo/gen/assets.gen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final keyFormData = GlobalKey<FormState>();
    const height18 = SizedBox(height: 18);
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
              height18,
              Assets.images.logo.logoYourHome.svg(
                width: 120,
                height: 120,
              ),
              height18,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(
                    child: Form(
                      key: keyFormData,
                      child: Column(
                        children: [
                          height18,
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
                          height18,
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
                          height18,
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
                          height18,
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
                          height18,
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
                    textButton: "สมัครสมาชิก",
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
