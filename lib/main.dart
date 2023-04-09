import 'package:flutter/material.dart';
import 'package:rcipe_app/core/theme/light_theme.dart';
import 'package:rcipe_app/presentation/screens/splash_screen.dart';

import 'app_router.dart';

void main() {
  runApp(Builder(
    builder: (context) {
      return  MyApp();
    }
  ));
}

class MyApp extends StatelessWidget {
  static MyApp? of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<MyApp>();

  static final _isDarkMode = ValueNotifier<bool>(false);

  static bool get isDarkMode => _isDarkMode.value;

  static set isDarkMode(bool value) => _isDarkMode.value = value;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isDarkMode,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MyApp',
          theme: isDarkMode ? darkTheme :lightTheme ,
          onGenerateRoute: (setting)=>generateRoute(setting),
          home:const SplashView() ,
        );
      },
    );
  }
}
