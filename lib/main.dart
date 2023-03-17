import 'package:flutter/material.dart';
import 'package:rcipe_app/presentation/screens/splash_screen.dart';

import 'app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      onGenerateRoute: (setting)=>generateRoute(setting),
      home:const SplashView() ,
    );
  }
}
