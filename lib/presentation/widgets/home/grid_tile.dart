import 'package:flutter/material.dart';
import 'package:rcipe_app/core/constant/app_color.dart';

import '../../../data/models/recipe_model.dart';

class RecipeGrid extends StatelessWidget {
  final List<Recipe> recipes;

  RecipeGrid({required this.recipes});

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
        return Card(
          elevation: 4,
          color: AppColor.kTextFiledColor,
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
                      top:4,
                      right: 6,
                      child: Container(
                        alignment: Alignment.center,
                        height: 24,
                        width: 22,
                          decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),child: const InkWell(child: Icon( Icons.favorite_border_rounded,size: 17,))),
                    ),

                  ],
                )),
           const SizedBox(height: 4),
                Text(recipe.title, style: const TextStyle(fontSize: 13),maxLines: 2,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: 4),

                Row(
               crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(Icons.local_fire_department_outlined,size: 13,),Text(' ${recipe.calories} Kcal ',style: const TextStyle(
                      fontSize: 9
                    ),),
                    const SizedBox(width: 15,),
                    const Icon(Icons.watch_later_outlined,size: 13,),Text(' ${recipe.duration} min',style: const TextStyle(
                        fontSize: 9
                    ),),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
