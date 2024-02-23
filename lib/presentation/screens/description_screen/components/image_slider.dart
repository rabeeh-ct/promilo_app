import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../domain/entities/description_screen_entity.dart';
import '../../../theme/theme.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({
    super.key,
    this.height = 180,
    required this.items,
    required this.pageController,
  });

  final double height;
  final List<ImageEntity> items;

  // final String title;
  // final String subTitle;
  final PageController pageController;
  Rx<int> pageIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              onPageChanged: (value) {
                pageIndex.value = value;
              },
              // store this controller in a State to save the carousel scroll position
              controller: pageController,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      items[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: items.length,
            ),
          ),
          Align(
            alignment: Alignment(0, .9),
            child: Obx(() {
              return DotsIndicator(
                decorator: DotsDecorator(
                  activeColor: whiteColor,
                  color: Colors.grey.shade300,
                  size: Size.square(11),
                  activeSize: Size.square(11),
                ),
                dotsCount: items.length,
                position: pageIndex.value,
              );
            }),
          ),
        ],
      ),
    );
  }
}
