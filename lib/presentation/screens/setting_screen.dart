import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../main.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          secondary: Icon(FontAwesomeIcons.moon), // add the icon here
          value: MyApp.isDarkMode,
          onChanged: (value) {
            MyApp.isDarkMode = value;

            setState(() { });
          },
        ),
      ],
    );
  }
}
