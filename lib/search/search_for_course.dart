import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../course/index.dart';
import '../utils/global_colours.dart';

class SearchForCourse extends StatelessWidget {
  SearchForCourse({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: GlobalColors.borderGrey,
                        ),
                      ),
                      child: const Icon(
                          CupertinoIcons.back
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 56,
                  width: 399,
                  padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: GlobalColors.borderGrey,
                      width: 1,
                    ),
                  ),
                  child: TextFormField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search course',
                      hintStyle: TextStyle(
                        height: 1,
                        color: GlobalColors.smallTextColorGrey,
                        fontSize: 14,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                      ),
                      suffixIcon: Image.asset(
                        'assets/blush_icons/search_icon.png',
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 31),
                SizedBox(
                  width: 370,
                  height: 253,
                  child: Image.asset(
                    'assets/blush_images/cool_kids_fresh_air.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'Search for course',
                  style: TextStyle(
                    color: GlobalColors.bigTextColorBlack,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "A whole library of knowledge",
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
                  "waiting to be discovered.",
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
          ),
        ),
      ),
    );
  }
}
