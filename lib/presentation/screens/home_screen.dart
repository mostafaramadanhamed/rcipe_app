import 'package:flutter/material.dart';
import 'package:rcipe_app/core/constant/app_strings.dart';

class HomeScreen extends StatelessWidget {
  static const routeName='/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
  return Scaffold(
    backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height/10,
            ),
            const Center(
              child:  Text(AppString.kSearch,style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),),
            ),
            SizedBox(
              height: size.height/20,
            ),
            const Text(AppString.kTitleBar,style:  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),),  const  SizedBox(
              height: 10,
            ),
            const Text(AppString.kSubTitleBar,style:  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),)
          ],
        ),
      ),
    );
  }
}
