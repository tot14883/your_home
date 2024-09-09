import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';

class ComCarouselImage extends StatefulWidget {
  const ComCarouselImage(
      {super.key, required this.pageController, required this.imagePaths});

  final PageController pageController;
  final List<String> imagePaths;

  @override
  State<ComCarouselImage> createState() => _ComCarouselImageState();
}

class _ComCarouselImageState extends State<ComCarouselImage> {
  int currentPageImage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: PageView.builder(
            controller: widget.pageController,
            onPageChanged: (value) {
              setState(() {
                currentPageImage = value;
              });
            },
            itemCount: widget.imagePaths.length,
            itemBuilder: (context, index) {
              return Image.asset(
                widget.imagePaths[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: MediaQuery.of(context).size.width / 2.5,
          child: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                ...List.generate(
                  widget.imagePaths.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.only(
                      right: 5,
                    ),
                    height: 8,
                    width: currentPageImage == index ? 20 : 8,
                    decoration: BoxDecoration(
                      color: currentPageImage == index
                          ? comSecondaryColor
                          : comPrimaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ).toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
