import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';
import 'package:home_demo/features/profile/change_user_or_pass_screen.dart';

class UsernamePassWidget extends StatelessWidget {
  const UsernamePassWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: comPrimaryColor),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'username : arita_a@mail.com',
                      style: ComFontStyle.regular16,
                    ),
                    Text(
                      'password: ************',
                      style: ComFontStyle.regular16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChangeUserOrPassScreen(),
                ),
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
