import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rcipe_app/core/constant/app_assets.dart';
import 'package:rcipe_app/core/constant/app_numbers.dart';
import 'package:rcipe_app/presentation/screens/home_screen.dart';
import 'package:rcipe_app/presentation/screens/login_screen.dart';
import 'package:rcipe_app/presentation/screens/main_screen.dart';
import 'package:rcipe_app/presentation/widgets/splash/splash_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToReg();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image(
          image: const AssetImage(
            AppAssets.kSplashBackgroundImage,
          ),
          width: size.width,
          height: size.height,
          color: Colors.black.withOpacity(0.5),
          colorBlendMode: BlendMode.darken,
        ),
        Positioned(
          bottom: size.height / 3,
          right: size.width / 5,
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: size.height / 6.9,
              child: const Image(
                image: AssetImage(AppAssets.kSplashImage),
              )),
        ),
        Positioned(
          bottom: size.height / 1.5,
          left: size.width / 2.99,
          child: SlidingText(slidingAnimation: slidingAnimation),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: AppNumbers.kMSTextDelayTime),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(9, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToReg() {
    Timer(const Duration(milliseconds: AppNumbers.kMSDelayTime), () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }
}
