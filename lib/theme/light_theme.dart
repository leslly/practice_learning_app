import 'package:flutter/material.dart';

import '../utils/global_colours.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,

  iconTheme: IconThemeData(
    color: Colors.grey,
  ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: GlobalColors.buttonColorwhite,
    ),

    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: GlobalColors.buttonColorwhite
    ),

    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: GlobalColors.bigTextColorBlack,
      ),
      color: GlobalColors.buttonColorwhite,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),

    ),

    colorScheme: ColorScheme.light(
      background: GlobalColors.buttonColorwhite,
      primary: Colors.white, // search box
      secondary: GlobalColors.bigTextColorBlack,
      surface: GlobalColors.buttonColorwhite// search and notification
    )
);