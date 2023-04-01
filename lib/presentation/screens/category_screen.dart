import 'package:flutter/material.dart';
import 'package:rcipe_app/core/constant/app_assets.dart';
import 'package:rcipe_app/core/constant/app_color.dart';

import '../../core/constant/app_strings.dart';
import '../widgets/home/build_title.dart';

class BookmarkScreen extends StatelessWidget {
   BookmarkScreen({Key? key}) : super(key: key);
final List<String>titles=[
  AppString.kCategoryBreakfast,
  AppString.kCategoryLunch,
  AppString.kCategoryDrinks,
  AppString.kCategoryPastas,
  AppString.kCategorySalads,
  AppString.kCategoryDesserts,
  AppString.kCategorySoups,
];final List<String>images=[
  AppAssets.kBreakfastImage,
  AppAssets.kLunchImage,
  AppAssets.kDrinksImage,
  AppAssets.kPastasImage,
  AppAssets.kSaladsImage,
  AppAssets.kDessertsImage,
  AppAssets.kSoupsImage,
];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(
            height: size.height/12,
          ),
      Center(
        child: buildTextTitle(AppString.kCategoryTitle),
      ),
          Expanded(
            child: ListView.builder(
             // physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
                itemBuilder: (context,index)=>item(
                  image: images[index],
                  title: titles[index],
                )
            ),
          ),
        ],
      ),
    );
  }
}
Widget item({
  required String title,
  required String image,
})=>Container(
height:57,
padding: const EdgeInsets.symmetric(horizontal: 12),
margin: const EdgeInsets.symmetric(vertical: 8),
decoration: BoxDecoration(
boxShadow: const [
BoxShadow(
color: Colors.grey,
offset: Offset(0,4), //(x,y)
blurRadius: 4.0,
),
],
color: AppColor.kCategoryColor,
borderRadius: BorderRadius.circular(16)
),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(title,style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.w500,
),),

 Image(image: AssetImage(image)),
],
),
);