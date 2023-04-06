import 'package:flutter/material.dart';

import '../constant/app_color.dart';

final ThemeData lightTheme = ThemeData(
//  primarySwatch: Colors.blue,
  cardTheme: CardTheme(
    color:  AppColor.kTextFiledColor,
  ),bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
),

  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  cardColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  )
);
