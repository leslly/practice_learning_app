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

  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.black,
  ),

    appBarTheme: AppBarTheme(
     titleTextStyle: TextStyle(
       color: GlobalColors.buttonColorwhite,
     ),
        color: GlobalColors.borderGrey,
      iconTheme: IconThemeData(
        color: GlobalColors.whiteTextColor,
      )
    ),

  // textTheme: TextTheme(
  //   bodySmall: TextStyle(color: Colors.cyanAccent, fontSize: )
  // ),

  colorScheme: const ColorScheme.dark(
  background: Color(0xFF424242),
    surface: Colors.black,
    primary: Color(0xFF424242), // search box
    secondary: Colors.white, // search and notification
  )
);