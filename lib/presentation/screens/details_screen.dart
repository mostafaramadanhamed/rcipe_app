import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constant/app_color.dart';
import '../../data/models/recipe_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.recipe}) : super(key: key);
  static const routeName='/details-screen';

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.3, // Adjust the height as needed
              width: double.infinity,
              child: Stack(
                children: [
                  Image.network(
                   recipe.imageUrl,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  // Back button icon positioned at the top left
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 10, // Adjust the positioning as needed
                    left: 10,
                    child: IconButton(
                      icon: const CircleAvatar(backgroundColor: Colors.white38,
                          child: Icon(Icons.arrow_back,color: Colors.white,)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                   recipe.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        child: Text('Cal: ',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.kCursorColor,
                        ),),
                      ),
                      const Icon(
                        FontAwesomeIcons.fireFlameCurved,
                        color: AppColor.kIconColor,
                        size: 20,
                      ),
                      Text(
                        ' ${recipe.calories} Kcal ',
                        style: const TextStyle(fontSize: 16,   color: AppColor.kTextInNewColor,),
                      ),const Spacer(),
                      const SizedBox(
                        child: Text('Time: ',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.kCursorColor,
                        ),),
                      ),

                      const Icon(
                        FontAwesomeIcons.clock,
                        color: AppColor.kIconColor,
                        size: 20,
                      ),
                      Text(
                        ' ${recipe.duration} min',
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColor.kTextInNewColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 11,),
                  const Text('Ingredients', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purpleAccent),),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: recipe.ingredients.map((detail) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          children: [
                             Icon(Icons.circle, size: 8,color: Colors.purpleAccent.shade400),
                            const SizedBox(width: 8),
                            Text(
                              detail,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 11,),
                  const Text('Steps', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent,),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: recipe.steps.map((detail) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          children: [
                            const Icon(Icons.circle, size: 8,color: Colors.lightBlueAccent,),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                detail,
                                maxLines: 4,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
