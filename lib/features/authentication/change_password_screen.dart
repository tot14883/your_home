import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_button.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/components/com_validator.dart';
import 'package:home_demo/features/authentication/otp_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => ChangePasswordScreenState();
}

class ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final formKeyEmail = GlobalKey<FormState>();
  TextEditingController? emailController = TextEditingController();

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
                text: "ลืมรหัสผ่าน",
                onPop: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    bottom: 32,
                    top: 24,
                  ),
                  child: Column(
                    children: [
                      Form(
                        key: formKeyEmail,
                        child: Column(
                          children: [
                            ComTextFormField(
                              lable: "กรุณากรอกอีเมลล์เพื่อรีเซตรหัสผ่านใหม่",
                              hintText: "อีเมลล์",
                              controller: emailController,
                              // focusNode: FocusNode(canRequestFocus: false),
                              prefixIcon: const Icon(
                                Icons.mail_outlined,
                                color: comPrimaryColor,
                                size: 24,
                              ),
                              validator:
                                  ValidatorText.validator("Please enter email"),
                            ),
                            const SizedBox(height: 21),
                            ComButton(
                              textButton: "ส่ง",
                              onPressed: () {
                                if (formKeyEmail.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const OtpScreen(),
                                    ),
                                  );
                                }
                              },
                            ),
                            const SizedBox(height: 78),
                          ],
                        ),
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
