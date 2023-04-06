import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rcipe_app/core/constant/app_color.dart';
import 'package:rcipe_app/presentation/screens/new_recipe_screen.dart';
import 'package:rcipe_app/presentation/screens/setting_screen.dart';

import 'category_screen.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main-screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> pages = [
    const HomeScreen(),
    BookmarkScreen(),
    FavoriteScreen(),
    NewRecipeScreen(),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColor.kBottomNavBarColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.22),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          // selectedItemColor: Colors.black,
          // unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house),
                label: 'Home',
                activeIcon: Icon(
                 FontAwesomeIcons.house,
                )),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookmark),
              label: 'Bookmark',
              activeIcon: Icon(
                FontAwesomeIcons.solidBookmark,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Favorite',
              activeIcon: Icon(
                FontAwesomeIcons.solidHeart,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.plus),
              label: 'Add',
              activeIcon: Icon(
                FontAwesomeIcons.plus,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.gear),
              label: 'Setting',
              activeIcon: Icon(
                FontAwesomeIcons.gear,
              ),
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}
