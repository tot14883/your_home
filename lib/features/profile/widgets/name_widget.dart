import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_dialog.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/components/com_validator.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 24),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: comPrimaryColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: comTertiaryColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo/avatar.jpg"),
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'อาริตา',
                      style: ComFontStyle.regular16,
                    ),
                    Text('อรัณยกุล', style: ComFontStyle.regular16),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              comDialog(
                context: context,
                height: screenSize.height * 0.5, // 50% of screen height,
                width: screenSize.width * 0.8, // 80% of screen width,
                title: "แก้ไขข้อมูล",
                body: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            color: comTertiaryColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/logo/avatar.jpg"),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: comTertiaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const DialogEditProfile(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 21,
                          vertical: 21,
                        ),
                        child: Column(
                          children: [
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
                            const SizedBox(height: 15),
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                textCancelBtn: "ยกเลิก",
                onPressedCancelBtn: () {
                  Navigator.pop(context);
                },
                textOKBtn: "บันทึก",
                onPressedOKBtn: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pop(context);
                  }
                },
              );
            },
            child: const Icon(
              Icons.arrow_forward_ios,
              color: comPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class DialogEditProfile extends StatefulWidget {
  const DialogEditProfile({
    super.key,
  });

  @override
  State<DialogEditProfile> createState() => _DialogEditProfileState();
}

class _DialogEditProfileState extends State<DialogEditProfile> {
  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      alignmentOffset: const Offset(0, 5),
      style: const MenuStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
        side: WidgetStatePropertyAll<BorderSide>(
          BorderSide(width: 0.5, color: comPrimaryColor),
        ),
      ),
      builder:
          (BuildContext context, MenuController controller, Widget? child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: const Icon(
            Icons.camera_alt_outlined,
            color: comPrimaryColor,
            size: 20,
          ),
          tooltip: 'Show menu',
        );
      },
      menuChildren: [
        MenuItemButton(
          onPressed: () {},
          child: Text(
            'ถ่ายภาพ',
            style: ComFontStyle.light16.copyWith(color: comPrimaryColor),
          ),
        ),
        MenuItemButton(
          onPressed: () {},
          child: Text(
            'เลือกจากคลัง',
            style: ComFontStyle.light16.copyWith(color: comPrimaryColor),
          ),
        ),
      ],
    );
  }
}
