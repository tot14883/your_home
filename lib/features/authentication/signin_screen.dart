import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/features/authentication/signup_screen.dart';
import 'package:home_demo/features/home/home_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SvgPicture.asset(
                "assets/images/logo/logo_hommy.svg",
                semanticsLabel: 'Hommy Logo',
                width: 200,
                height: 200,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const ComTextFormField(
                      hintText: "username",
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        size: 24,
                        color: comPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const ComTextFormField(
                      hintText: "password",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: comPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        ),
                        child: Text(
                          "ลืมรหัสผ่าน",
                          style: ComFontStyle.regular14.copyWith(
                              color: comPrimaryColor,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ComButton(
                      textButton: "เข้าสู้ระบบ",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
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
                              builder: (context) => const SignupScreen()),
                        );
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
