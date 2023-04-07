import 'package:flutter/material.dart';

import '../constant/app_color.dart';

final ThemeData lightTheme = ThemeData(
  backgroundColor: AppColor.kCategoryColor,
  cardTheme: const CardTheme(
    color:  AppColor.kTextFiledColor,
  ),bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
  unselectedItemColor: Colors.grey,
),

  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  cardColor: Colors.grey.shade900,
  scaffoldBackgroundColor: Colors.black,
    backgroundColor: AppColor.kDarkBackgroundColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  )
);
