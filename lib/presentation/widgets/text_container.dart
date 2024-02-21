import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    Key? key,
    required this.keyName,
    required this.value,
    this.isColored = false,
    this.valueColor,
    this.valueWidget,
    this.textDirection,
  }) : super(key: key);
  final String keyName;
  final String value;
  final bool isColored;
  final Color? valueColor;
  final Widget? valueWidget;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding / 2, vertical: defaultPadding / 1.5),
      decoration: BoxDecoration(
          color: isColored ? Get.isDarkMode?const Color(0xff3B444A):Theme.of(context).scaffoldBackgroundColor : null,
          borderRadius: BorderRadius.circular(7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              keyName,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Get.isDarkMode?greyColor:null),
              textScaleFactor: 1.0,
            ),
          ),
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.centerRight,
              child: valueWidget??Text(
                value,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: valueColor),
                  textScaleFactor: 1.0,
                  textDirection: textDirection,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
