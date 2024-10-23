import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/components/com_validator.dart';
import 'package:home_demo/features/authentication/change_password_screen.dart';
import 'package:home_demo/features/authentication/signup_screen.dart';
import 'package:home_demo/features/home/home_screen.dart';
import 'package:home_demo/gen/assets.gen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final keyForm = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 50),
                child: Assets.images.logo.logoYourHome.svg(
                  width: 150,
                  height: 150,
                  semanticsLabel: 'Hommy Logo',
                ),
              ),
              Expanded(
                child: Form(
                  key: keyForm,
                  child: Column(
                    children: [
                      ComTextFormField(
                        hintText: "username",
                        prefixIcon: const Icon(
                          Icons.account_circle_outlined,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                        validator:
                            ValidatorText.validator("Please enter username"),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      ComTextFormField(
                        hintText: "password",
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          size: 24,
                          color: comPrimaryColor,
                        ),
                        validator:
                            ValidatorText.validator("Please enter password"),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ChangePasswordScreen(),
                            ),
                          ),
                          child: Text(
                            "ลืมรหัสผ่าน",
                            style: ComFontStyle.regular14.copyWith(
                              color: comPrimaryColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      ComButton(
                        textButton: "เข้าสู้ระบบ",
                        onPressed: () {
                          if (keyForm.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          }
                        },
                      ),
                      const Spacer(),
                      RichText(
                        text: TextSpan(
                          text: 'คุณได้เป็นสมาชิกหรือไม่ ?',
                          style: ComFontStyle.regular16.copyWith(
                            color: comPrimaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: ' สมัครสมาชิก',
                              style: ComFontStyle.regular16.copyWith(
                                color: comPrimaryColor,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
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
