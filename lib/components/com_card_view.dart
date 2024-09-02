import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';
import 'package:home_demo/components/com_font_style.dart';

class ComCardView extends StatelessWidget {
  const ComCardView({
    super.key,
    this.name,
    this.badroom,
    this.bathroom,
    this.location,
    this.image,
    this.onTap,
  });

  final String? name;
  final String? badroom;
  final String? bathroom;
  final String? location;
  final String? image;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: SizedBox(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image ?? ""),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                color: comPrimaryColor.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? "",
                      style:
                          ComFontStyle.medium14.copyWith(color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.bed_outlined,
                          size: 18,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          badroom ?? "",
                          style: ComFontStyle.regular14
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 21,
                        ),
                        const Icon(
                          Icons.wc_outlined,
                          size: 18,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          bathroom ?? "",
                          style: ComFontStyle.regular14
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      location ?? "",
                      style:
                          ComFontStyle.regular14.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
