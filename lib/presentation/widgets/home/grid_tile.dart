import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rcipe_app/core/constant/app_color.dart';
import 'package:rcipe_app/presentation/screens/details_screen.dart';

import '../../../data/models/recipe_model.dart';

class RecipeGrid extends StatelessWidget {
  final List<Recipe> recipes;

  RecipeGrid({required this.recipes,});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: recipes.length,
      itemBuilder: (BuildContext context, int index) {
        Recipe recipe = recipes[index];
        return buildGridItem(recipe,context);
      },
    );
  }

  Widget buildGridItem(Recipe recipe,BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, DetailsScreen.routeName,arguments: recipe);
      },
      child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              right: 8.0,
              left: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Image.network(recipe.imageUrl),
                        Positioned(
                          top: 4,
                          right: 6,
                          child: Container(
                              alignment: Alignment.center,
                              height: 24,
                              width: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Theme.of(context).scaffoldBackgroundColor,
                              ),
                              child: const InkWell(
                                  child: Icon(
                                FontAwesomeIcons.heart,
                                size: 16,
                              ))),
                        ),
                      ],
                    )),
                //  const SizedBox(height: 4),
                Text(
                  recipe.title,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w500),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                //  const SizedBox(height: 4),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   const SizedBox(width: 3,), const Icon(
                      FontAwesomeIcons.fireFlameCurved,
                      color: AppColor.kIconColor,
                      size: 13,
                    ),
                    Text(
                      ' ${recipe.calories} Kcal ',
                      style: const TextStyle(fontSize: 9,   color: AppColor.kTextInNewColor,),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                     FontAwesomeIcons.clock,
                      color: AppColor.kIconColor,
                      size: 13,
                    ),
                    Text(
                      ' ${recipe.duration} min',
                      style: const TextStyle(
                        fontSize: 9,
                        color: AppColor.kTextInNewColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
