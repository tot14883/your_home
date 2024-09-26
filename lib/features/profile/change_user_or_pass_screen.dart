import 'package:flutter/material.dart';
import 'package:home_demo/components/com_app_bar.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_dialog.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/features/authentication/signin_screen.dart';

class ChangeUserOrPassScreen extends StatefulWidget {
  const ChangeUserOrPassScreen({super.key});

  @override
  State<ChangeUserOrPassScreen> createState() => ChangeUserOrPassScreenState();
}

class ChangeUserOrPassScreenState extends State<ChangeUserOrPassScreen> {
  final TextEditingController newPassController = TextEditingController();
  final TextEditingController confPassController = TextEditingController();
  bool visibilityNewPass = false;
  bool visibilityConPass = false;

  bool get checkLengthCorrect => newPassController.text.length > 7;
  bool get checkUppercase => RegExp('[A-Z]').hasMatch(newPassController.text);
  bool get passLowerCase => RegExp('[a-z]').hasMatch(newPassController.text);
  bool get checkNumber => RegExp('[0-9]').hasMatch(newPassController.text);
  bool get checkCharSpecial =>
      RegExp('[^a-zA-Z0-9]').hasMatch(newPassController.text);

  @override
  void initState() {
    super.initState();
    newPassController.addListener(() => setState(() {}));
    confPassController.addListener(() => setState(() {}));
  }

  bool checkSubmit() {
    return newPassController.text.isNotEmpty &&
        confPassController.text.isNotEmpty &&
        checkLengthCorrect &&
        checkUppercase &&
        passLowerCase &&
        checkNumber &&
        checkCharSpecial &&
        newPassController.text == confPassController.text;
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
                text: "แก้ไขข้อมูล",
                onPop: () => Navigator.pop(context),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, bottom: 32, top: 24),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "username",
                          style: ComFontStyle.medium18,
                        ),
                        const SizedBox(height: 12),
                        const ComTextFormField(
                          enabled: false,
                          hintText: "arita_a@mail.com",
                          prefixIcon: Icon(
                            Icons.account_circle_outlined,
                            size: 24,
                            color: comPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 21),
                        Text(
                          "password",
                          style: ComFontStyle.medium18,
                        ),
                        const SizedBox(height: 12),
                        ComTextFormField(
                          controller: newPassController,
                          obscureText: visibilityNewPass ? false : true,
                          hintText: "new password",
                          onChanged: (p0) {
                            newPassController.text.isNotEmpty &&
                                confPassController.text.isNotEmpty &&
                                checkLengthCorrect &&
                                checkUppercase &&
                                passLowerCase &&
                                checkNumber &&
                                checkCharSpecial;
                          },
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            size: 24,
                            color: comPrimaryColor,
                          ),
                          suffixIcon: visibilityNewPass == true
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      visibilityNewPass = !visibilityNewPass;
                                    });
                                  },
                                  child: const Icon(
                                    size: 24,
                                    Icons.visibility_outlined,
                                    color: comPrimaryColor,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      visibilityNewPass = !visibilityNewPass;
                                    });
                                  },
                                  child: const Icon(
                                    size: 24,
                                    Icons.visibility_off_outlined,
                                    color: comPrimaryColor,
                                  ),
                                ),
                        ),
                        const SizedBox(height: 12),
                        ComTextFormField(
                          controller: confPassController,
                          obscureText: visibilityConPass ? false : true,
                          hintText: "confirm password",
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            size: 24,
                            color: comPrimaryColor,
                          ),
                          suffixIcon: visibilityConPass == true
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      visibilityConPass = !visibilityConPass;
                                    });
                                  },
                                  child: const Icon(
                                    size: 24,
                                    Icons.visibility_outlined,
                                    color: comPrimaryColor,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      visibilityConPass = !visibilityConPass;
                                    });
                                  },
                                  child: const Icon(
                                    size: 24,
                                    Icons.visibility_off_outlined,
                                    color: comPrimaryColor,
                                  ),
                                ),
                        ),
                        const SizedBox(height: 21),
                        Text(
                          "\u2022 ต้องมีตัวอักษรมากกว่า 8 ตัว",
                          style: ComFontStyle.light16.copyWith(
                              color: checkLengthCorrect
                                  ? comPrimaryColor
                                  : comSecondaryColor),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "\u2022 ต้องมีอักษร A-Z อย่างน้อง 1 ตัว",
                          style: ComFontStyle.light16.copyWith(
                              color: checkUppercase
                                  ? comPrimaryColor
                                  : comSecondaryColor),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "\u2022 ต้องมีอักษร a-z อย่างน้อย 1  ตัว",
                          style: ComFontStyle.light16.copyWith(
                            color: passLowerCase
                                ? comPrimaryColor
                                : comSecondaryColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "\u2022 ต้องมีตัวเลขอย่างน้อย 1 ตัว",
                          style: ComFontStyle.light16.copyWith(
                            color: checkNumber
                                ? comPrimaryColor
                                : comSecondaryColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "\u2022 ต้องมีอักษรพิเศษอย่างน้อย 1 ตัว (เช่น *#@~%-+)",
                          style: ComFontStyle.light16.copyWith(
                            color: checkCharSpecial
                                ? comPrimaryColor
                                : comSecondaryColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "\u2022 password ไม่ตรงกัน",
                          style: ComFontStyle.light16.copyWith(
                            color: (newPassController.text ==
                                        confPassController.text) &&
                                    newPassController.text.isNotEmpty &&
                                    confPassController.text.isNotEmpty
                                ? comPrimaryColor
                                : comSecondaryColor,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "ยกเลิก",
                                style: ComFontStyle.medium16,
                              ),
                            ),
                            const SizedBox(width: 12),
                            TextButton(
                              onPressed: () {
                                checkSubmit()
                                    ? comDialog(
                                        context: context,
                                        title: "ยืนยันเปลี่ยนรหัสผ่าน",
                                        body: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 24),
                                          child: Column(
                                            children: [
                                              ComTextFormField(
                                                hintText: "รหัสผ่าน",
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                "กรุณากรอกรหัสผ่านเดิม เพื่อทำงานเปลี่ยนรหัสไหม่",
                                                style: TextStyle(
                                                  color: comPrimaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        textCancelBtn: "ยกเลิก",
                                        onPressedCancelBtn: () =>
                                            Navigator.pop(context),
                                        textOKBtn: "เปลี่ยนรหัสผ่าน",
                                        onPressedOKBtn: () =>
                                            Navigator.pushAndRemoveUntil<void>(
                                          context,
                                          MaterialPageRoute<void>(
                                            builder: (BuildContext context) =>
                                                const SigninScreen(),
                                          ),
                                          ModalRoute.withName('/'),
                                        ),
                                      )
                                    : null;
                              },
                              child: Text(
                                "บันทึก",
                                style: ComFontStyle.medium16
                                    .copyWith(color: comSecondaryColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
