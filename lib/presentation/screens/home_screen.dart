import 'package:flutter/material.dart';
import 'package:rcipe_app/core/constant/app_strings.dart';
import 'package:rcipe_app/presentation/widgets/home/custom_text_field.dart';

import '../../core/dummy.dart';
import '../widgets/home/build_title.dart';
import '../widgets/home/grid_tile.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
            height: size.height / 12,
          ),
            Center(
              child: buildTextTitle(AppString.kSearch),
            ),

           SizedBox(
              height: size.height / 20,
            ),
            const Text(AppString.kTitleBar, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),),
            const SizedBox(
              height: 8,
            ),
            const Text(AppString.kSubTitleBar, style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),),
            SizedBox(
              height: size.height / 29,
            ),
            const CustomTextFiled(hint: AppString.kHintText),
            Expanded(child: RecipeGrid(recipes: recipes)),
          ],
        ),
      ),
    );
  }
}



