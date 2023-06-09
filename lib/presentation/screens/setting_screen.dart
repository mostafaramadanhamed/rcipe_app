import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rcipe_app/core/constant/app_strings.dart';

import '../../main.dart';
import '../widgets/home/build_title.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: size.height/12,),
          Center(child: buildTextTitle(AppString.kSettingTitle)),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title:const Text(AppString.kDarkModeTitle,style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),),
            subtitle:const Text(AppString.kDarkModeSubTitle),
            secondary: const Icon(FontAwesomeIcons.moon), // add the icon here
            value: MyApp.isDarkMode,
            onChanged: (value) {
              MyApp.isDarkMode = value;

              setState(() { });
            },
          ),
        ],
      ),
    );
  }
}
