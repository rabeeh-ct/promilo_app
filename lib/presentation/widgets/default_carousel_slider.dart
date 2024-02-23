import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';

class DefaultCarouselSlider extends StatelessWidget {
  DefaultCarouselSlider({
    super.key,
    this.height = 180,
    required this.items,
    required this.title,
    required this.subTitle, required this.pageController,
  });

  final double height;
  final List<String> items;
  final String title;
  final String subTitle;
  final PageController pageController;
  Rx<int> pageIndex=0.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                pageIndex.value=value;
              },
              // store this controller in a State to save the carousel scroll position
              controller: pageController,
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
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            items[index],
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned.fill(
                          child: ColoredBox(
                              color: Colors.black.withOpacity(0.5)
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  title,
                                  style: Get.textTheme.bodyMedium
                                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold,color: whiteColor),
                                ),
                                // 5.sBH,
                                Text(
                                  subTitle,
                                  style: Get.textTheme.bodyMedium
                                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold,color: whiteColor),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: items.length,
            ),
          ),
          Obx(() {
              return DotsIndicator(
                decorator: const DotsDecorator(activeColor: secondaryColor),
              dotsCount: items.length,
              position: pageIndex.value,
                  );
            }
          )
        ],
      ),
    );
  }
}
