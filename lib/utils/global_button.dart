import 'package:flutter/material.dart';

import 'global_colours.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, this.text = 'Next', required this.nextPage}) : super(key: key);

  final String text;
  final VoidCallback nextPage;

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
          color: GlobalColors.buttonColorOrange,
        ),
        child:  Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Rubik-Medium.ttf',
            fontWeight: FontWeight.bold,
            color: GlobalColors.whiteTextColor,
          ),
        ),
      ),
    );
  }
}
