import 'package:flutter/material.dart';
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
    final ThemeData lightTheme=
    return ValueListenableBuilder<bool>(
      valueListenable: _isDarkMode,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          title: 'MyApp',
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          onGenerateRoute: (setting)=>generateRoute(setting),
          home:const SplashView() ,
        );
      },
    );
  }
}

/*
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    // other light theme properties
  );

  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    // other dark theme properties
  );

  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: _isDarkMode ? darkTheme : lightTheme,
      home: MyHomePage(),
    );
  }
}

 */