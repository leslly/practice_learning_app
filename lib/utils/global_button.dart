import 'package:flutter/material.dart';

import 'global_colours.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, this.fontSize = 16, required this.colorOfText, required this.colorOfButton, this.text = 'Next', required this.nextPage}) : super(key: key);

  final String text;
  final VoidCallback nextPage;
  final Color colorOfButton;
  final Color colorOfText;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: nextPage,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        width: 311,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorOfButton,
          border: Border.all(width: 1, color: GlobalColors.borderGrey),
        ),
        child:  Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'assets/blush_images/Rubik/Rubik-Medium.ttf',
            fontWeight: FontWeight.bold,
            color: colorOfText,
          ),
        ),
      ),
    );
  }
}
