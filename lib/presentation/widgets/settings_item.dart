import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem(
      {Key? key, required this.text, this.fn, this.icon, this.fontSize=13})
      : super(key: key);
  final String text;
  final Widget? icon;
  final VoidCallback? fn;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    bool isArabic = Get.locale?.languageCode == "ar";
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: fn,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding*.25),
          child: Row(
            children: [
             icon!=null? SizedBox(
                  width: defaultPadding * 1.2,
                  height: defaultPadding * 2.1,
                  child: icon):const SizedBox(height: defaultPadding * 1.8,),
              icon!=null?defaultSpacerHorizontal:const SizedBox.shrink(),
              Text(
                text,
                textScaleFactor: 1.0,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: fontSize),
              ),
               Expanded(
                child: Align(
                  alignment: isArabic?Alignment.centerLeft:Alignment.centerRight,
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Container(
        color: Colors.orange,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){consoleLog("tapped");},
            child: const SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          ),
        ),
      ),
 */