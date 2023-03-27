import 'package:flutter/material.dart';

import 'global_colours.dart';

class HtmlListView extends StatelessWidget {
  const HtmlListView({Key? key, this.image = 'assets/blush_images/cool_kids_study.png', this.text = 'Main Tags'}) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 370,
          height: 88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: GlobalColors.borderGrey,
                width: 1,
                style: BorderStyle.solid
            ),
          ),
          child: ListTile(
            leading: Row(
              children: [
                Container(
                  height: 72,
                  width: 78,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: GlobalColors.bigTextColorBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 222,
                      height: 11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: GlobalColors.profileBorder,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}