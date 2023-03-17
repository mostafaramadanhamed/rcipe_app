
import 'package:flutter/material.dart';

import 'widgets/splash_widgets.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(

      body: SplashViewBody(),
    );
  }
}