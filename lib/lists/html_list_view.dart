import 'package:flutter/material.dart';

import '../utils/global_colours.dart';

class HtmlListView extends StatelessWidget {
 const HtmlListView({Key? key, this.lessonPage,this.progressBarWidth = 222, this.image = 'assets/blush_images/cool_kids_on_wheels_one.png', this.text = 'Main Tags'}) : super(key: key);

  final String image;
  final String text;
  final double progressBarWidth;
  final VoidCallback? lessonPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: lessonPage,
      child: Container(
        width: 370,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: GlobalColors.borderGrey,
              width: 1,
              style: BorderStyle.solid
          ),
        ),
        child: ListTile(
          leading: Container(
                height: 72,
                width: 78,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            title: Text(
                    text,
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    ),
                  ),
                  subtitle: Container(
                    width: 222,
                    height: 11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Container(
                      width: 222,
                      height: 11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: GlobalColors.profileBorder,
                      ),
                    ),
                  ),
              ),
        ),
    );
  }
}
