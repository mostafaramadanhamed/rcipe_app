import 'package:flutter/material.dart';

import '../../core/constant/app_strings.dart';
import '../widgets/home/build_title.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: [
        SizedBox(
          height: size.height / 12,
        ),
        Center(
          child: buildTextTitle(AppString.kFavoriteTitle),
        ),
      ],
    );
  }
}