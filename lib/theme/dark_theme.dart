import 'package:flutter/material.dart';

import '../utils/global_colours.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,

  iconTheme: IconThemeData(
    color: GlobalColors.whiteTextColor,
  ),

    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: GlobalColors.borderGrey,
    ),

  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: GlobalColors.borderGrey
  ),

    appBarTheme: AppBarTheme(
      backgroundColor: GlobalColors.borderGrey,
        foregroundColor: GlobalColors.borderGrey,
        color: GlobalColors.borderGrey,
      iconTheme: IconThemeData(
        color: GlobalColors.whiteTextColor,
      )
    ),

  colorScheme: ColorScheme.dark(
  background: const Color(0xFF424242),
    surface: Colors.black,
    primary: GlobalColors.borderGrey, // search box
    secondary: Colors.white, // search and notification
  )
);