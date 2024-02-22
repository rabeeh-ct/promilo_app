import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../theme/theme.dart';

BottomNavigationBarItem bottomNavBarItem(
    {required String imagePath,
    required String label,
    required int index,
    required int selectedIndex,
    bool isItStore = false}) {
  return BottomNavigationBarItem(
      icon: SizedBox(
        height: 30,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Get.isDarkMode
                  ? SvgPicture.asset(
                      imagePath,
                      colorFilter: ColorFilter.mode(
                        index == selectedIndex ? primaryColor : whiteColor,
                        BlendMode.srcIn,
                      ),
                    )
                  : SvgPicture.asset(
                      imagePath,
                      colorFilter:
                          const ColorFilter.mode(blackColor, BlendMode.srcIn),
                    ),
            ),
            isItStore
                ? Align(
                    alignment: const Alignment(0.3, -1),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                          color: primaryColor, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "1",
                          style: Theme.of(Get.context!)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(Get.context!)
                                      .colorScheme
                                      .onBackground),
                          textScaler: TextScaler.noScaling,
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
      label: label);
}

class BottomBarIcon extends StatelessWidget {
  const BottomBarIcon(
      {Key? key,
      required this.imagePath,
      required this.index,
      required this.selectedIndex,
      this.isItStore = false,
      this.count})
      : super(key: key);

  final String imagePath;
  final int index;
  final int selectedIndex;
  final bool isItStore;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                imagePath,
                colorFilter: ColorFilter.mode(
                    index == selectedIndex
                        ? primaryColor
                        : blackColor,
                    BlendMode.srcIn),
                // color:  index == selectedIndex
                //         ? primaryColor
                //         : Theme.of(context).textTheme.bodyMedium!.color
              )),
          isItStore
              ? count != null && count! > 0
                  ? Align(
                      alignment: const Alignment(0.3, -1),
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                            color: primaryColor, shape: BoxShape.circle),
                        child: Center(
                            child: Text(
                          count.toString(),
                          style: Theme.of(Get.context!)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(Get.context!)
                                      .colorScheme
                                      .onBackground),
                          textScaleFactor: 1.0,
                        )),
                      ),
                    )
                  : const SizedBox.shrink()
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
