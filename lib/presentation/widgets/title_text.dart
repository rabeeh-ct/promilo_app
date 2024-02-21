import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textScaleFactor: 1,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Get.isDarkMode ? greyColor : null, fontSize: 13),
    );
  }
}
