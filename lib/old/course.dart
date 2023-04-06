import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/category_labels.dart';
import '../utils/global_colours.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key, this.nextPage, this.image = 'assets/blush_images/cool_kids_discussion.png', this.descriptionText = 'Advanced mobile interface design', this.titleText = 'UI', this.durationText = '3 h 30 min', this.priceText = "\$ 50",required this.backgroundColor}) : super(key: key);

  final Color backgroundColor;
  final String image;
  final String priceText;
  final String durationText;
  final String titleText;
  final String descriptionText;
  final VoidCallback? nextPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399,
      height: 297,
      decoration: BoxDecoration(
        border: Border.all(color: GlobalColors.borderGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 16),
                  child: Container(
                    width: 370,
                    height: 138,
                    color: backgroundColor,
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 8, left: 302, right: 16),
                 child: CategoryLabels(text: priceText),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              durationText,
              style: TextStyle(
                color: GlobalColors.profileBorder,
                fontSize: 12,
                fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              titleText,
              style: TextStyle(
                color: GlobalColors.bigTextColorBlack,
                fontSize: 24,
                fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
              ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                descriptionText,
                  style: TextStyle(
                    color: GlobalColors.bigTextColorBlack,
                    fontSize: 14,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                  ),
                ),
              ),
              //const SizedBox(width: 10),
              InkWell(
                onTap: nextPage,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                      CupertinoIcons.arrow_right
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
