import 'package:flutter/material.dart';
import 'package:rcipe_app/presentation/screens/home_screen.dart';

import 'core/screens=/error_screen.dart';


Route<dynamic>generateRoute(RouteSettings settings){
  switch(settings.name){
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context){
        return const HomeScreen();
      });

    default:
      return MaterialPageRoute(builder: (context){
        return const Scaffold(
          body: ErrorScreen(error: 'page dose n\'t exist'),
        );
      });
  }
}
