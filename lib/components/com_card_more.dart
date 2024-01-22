import 'package:flutter/material.dart';
import 'package:home_demo/components/com_color.dart';

class ComCardMore extends StatelessWidget {
  const ComCardMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Container(
          width: 162,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFE1C78F),
              Color(0xFF706233),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: comPrimaryColor, shape: BoxShape.circle),
                child: const Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
