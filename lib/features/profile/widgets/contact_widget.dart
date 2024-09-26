import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_dialog.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/components/com_text_formfield.dart';
import 'package:home_demo/components/com_validator.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'อีเมลล์ : arita_a@mail.com',
                      style: ComFontStyle.regular16,
                    ),
                    Text('เบอร์โทร : 0900000000',
                        style: ComFontStyle.regular16),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              comDialog(
                height: MediaQuery.of(context).size.height * 0.35,
                context: context,
                title: "แก้ไขข้อมูล",
                body: Padding(
                  padding: const EdgeInsets.only(left: 21, right: 21, top: 21),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        ComTextFormField(
                          hintText: "email",
                          prefixIcon: const Icon(
                            Icons.account_circle_outlined,
                            size: 24,
                            color: comPrimaryColor,
                          ),
                          validator:
                              ValidatorText.validator("Please enter text"),
                        ),
                        const SizedBox(height: 15),
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
                textCancelBtn: "ยกเลิก",
                onPressedCancelBtn: () => Navigator.pop(context),
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
