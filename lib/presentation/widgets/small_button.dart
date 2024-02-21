import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'loading_widget.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.onPressed,
      this.icon,
      required this.isLoading})
      : super(key: key);
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final bool isLoading;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return ElevatedButton(
          onPressed: isLoading ? () {} : onPressed,
          style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(
                  const Size(defaultPadding * 5, defaultPadding * 2.5)),
              elevation: MaterialStateProperty.all(defaultPadding / 10),
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(defaultPadding / 4)))),
          child: isLoading
              ? const ButtonLoadingWidget()
              : Text(
                  text,
                  textScaleFactor: 1.0,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: whiteColor),
                ));
    } else {
      return ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(defaultPadding / 2),
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(defaultPadding / 4)))),
          child: Row(
            children: [
              Icon(
                icon,
                color: primaryColor,
              ),
              defaultSpacerHorizontalSmall,
              Text(
                text,
                textScaleFactor: 1.0,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ));
    }
  }
}
