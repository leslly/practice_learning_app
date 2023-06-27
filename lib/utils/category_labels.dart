import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class CategoryLabels extends StatelessWidget {
  const CategoryLabels({Key? key,this.text = 'philosophy'}) : super(key: key);

  final String text;

  //String text = 'shopping';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // All courses with the keywords
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 11, right: 11, top: 3, bottom: 3),
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:GlobalColors.profileBorder,
            ),
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                 color: GlobalColors.whiteTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
