import 'package:flutter/material.dart';

import '../theme/theme.dart';

class DefaultCarouselSlider extends StatelessWidget {
  const DefaultCarouselSlider({
    super.key,
    this.height = 180,
    required this.items,
    required this.title,
    required this.subTitle,
  });

  final double height;
  final List<String> items;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: PageView.builder(
        // store this controller in a State to save the carousel scroll position
        controller: PageController(
            // viewportFraction: 0.8,
            ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                items[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
