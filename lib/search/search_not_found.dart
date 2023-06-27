import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/global_colours.dart';

class SearchNotFound extends StatelessWidget {
   const SearchNotFound({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        children: [
          SizedBox(
            width: 370,
            height: 253,
            child: Image.asset(
              'assets/blush_images/search_not_found.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Course not found',
            style: TextStyle(
              color: GlobalColors.bigTextColorBlack,
              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Try searching the course with",
            maxLines: 2,
            style: TextStyle(
              color: GlobalColors.smallTextColorGrey,
              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "a different keyword",
            maxLines: 2,
            style: TextStyle(
              color: GlobalColors.smallTextColorGrey,
              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
