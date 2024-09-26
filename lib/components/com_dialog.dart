import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

Future<String?> comDialog({
  required BuildContext context,
  required String title,
  double? width,
  double? height,
  required Widget body,
  String? textOKBtn,
  String? textCancelBtn,
  Color? colorTextOKBtn,
  Color? colorTextCancelBtn,
  Function()? onPressedOKBtn,
  Function()? onPressedCancelBtn,
}) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => Dialog(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: comPrimaryColor, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: width ??
            MediaQuery.of(context).size.width * 0.8, // 80% of screen width,
        height: height ??
            MediaQuery.of(context).size.height * 0.3, // 30% of screen height,
        child: Column(
          children: [
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 50),
                    child: Text(
                      title,
                      style: ComFontStyle.medium16
                          .copyWith(color: comPrimaryColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: comPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: body,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (textCancelBtn != null)
                    TextButton(
                      onPressed: onPressedCancelBtn,
                      child: Text(
                        textCancelBtn,
                        style: ComFontStyle.medium16.copyWith(
                            color: colorTextCancelBtn ?? comPrimaryColor),
                      ),
                    ),
                  const SizedBox(width: 12),
                  if (textOKBtn != null)
                    TextButton(
                      onPressed: onPressedOKBtn,
                      child: Text(
                        textOKBtn,
                        style: ComFontStyle.medium16.copyWith(
                            color: colorTextOKBtn ?? comSecondaryColor),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
