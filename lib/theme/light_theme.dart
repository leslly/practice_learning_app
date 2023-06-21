import 'package:flutter/material.dart';

import '../utils/global_colours.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
    // appBarTheme: AppBarTheme(
    //   backgroundColor: Colors.
    //   transparent,
    // )
  iconTheme: IconThemeData(
    color: GlobalColors.borderGrey,
  ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: GlobalColors.buttonColorwhite,
    ),

    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: GlobalColors.buttonColorwhite
    ),

    appBarTheme: AppBarTheme(
      color: GlobalColors.buttonColorwhite,
      iconTheme: IconThemeData(
        color: GlobalColors.borderGrey,
      ),

    ),

    colorScheme: ColorScheme.light(
      background: GlobalColors.buttonColorwhite,
      primary: Colors.transparent, // search box
      secondary: GlobalColors.bigTextColorBlack,
      surface: GlobalColors.buttonColorwhite// search and notification
    )
);