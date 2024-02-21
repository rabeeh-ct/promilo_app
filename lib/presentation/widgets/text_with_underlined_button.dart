import 'package:flutter/material.dart';

import '../theme/theme.dart';

class TextWithUnderlinedTextButton extends StatelessWidget {
  const TextWithUnderlinedTextButton(
      {Key? key,
      required this.text,
      required this.buttonText,
      this.color = primaryColor,
      required this.onPressed})
      : super(key: key);
  final String text;
  final String buttonText;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, textScaleFactor: 1.0),
        TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              textScaleFactor: 1.0,
              style:
                  TextStyle(decoration: TextDecoration.underline, color: color),
            ))
      ],
    );
  }
}
