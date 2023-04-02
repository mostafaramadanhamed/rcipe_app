
import 'package:flutter/material.dart';
import 'package:rcipe_app/core/constant/app_color.dart';
import 'package:rcipe_app/core/constant/app_strings.dart';
import 'package:rcipe_app/presentation/widgets/home/build_title.dart';
import 'package:rcipe_app/presentation/widgets/home/custom_text_field.dart';

class NewRecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
         physics:const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height/12,
            ),
          Center(child: buildTextTitle(AppString.kAddRecipeTitle)),
          const SizedBox(height: 15,),
          const Text("  NAME",style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,color: AppColor.kTextInNewColor,
          ),),
            const SizedBox(height: 7,),
          const CustomTextFiled(hint: ' '),
            const SizedBox(height: 15,),
            const Text("  CATEGORY",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,color: AppColor.kTextInNewColor,
            ),),
            const SizedBox(height: 7,),
            const CustomTextFiled(hint: ' '),
            const SizedBox(height: 15,),
            const Text("  DESCRIPTION",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,color: AppColor.kTextInNewColor,
            ),),
            const SizedBox(height: 7,),
            const CustomTextFiled(hint: ' '),
            const SizedBox(height: 15,),
            const Text("  INGREDIENTS",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,color: AppColor.kTextInNewColor,
            ),),
            const SizedBox(height: 7,),
            const CustomTextFiled(hint: ' '),
            const SizedBox(height: 15,),
            const Text("  DESCRIPTION",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,color: AppColor.kTextInNewColor,
            ),),
            const SizedBox(height: 7,),
            const CustomTextFiled(hint: ' '),
          ],
        ),
      ),
    );
  }
}