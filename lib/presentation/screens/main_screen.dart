import 'package:flutter/material.dart';
import 'package:rcipe_app/core/constant/app_color.dart';

import 'category_screen.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName='/main-screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int   _currentIndex=0 ;
  final List<Widget>pages=[
    const HomeScreen(),
    BookmarkScreen(),
    FavoriteScreen(),
    AddScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
        color: AppColor.kBottomNavBarColor,
        borderRadius: const BorderRadius.only(
        topLeft: const Radius.circular(25.0),
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
         backgroundColor:Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
               _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
              activeIcon: CircleAvatar(

                  backgroundColor: AppColor.kBottomNavBarItemColor.withOpacity(.25),child:const Icon(Icons.home,color: Colors.black,), )
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.bookmark),
              label: 'Bookmark',
                activeIcon: CircleAvatar(

                  backgroundColor: AppColor.kBottomNavBarItemColor.withOpacity(.25),
                  child:const Icon(Icons.bookmark,color: Colors.black,), ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite),
              label: 'Favorite',
              activeIcon: CircleAvatar(

                backgroundColor: AppColor.kBottomNavBarItemColor.withOpacity(.25),
                child:const Icon(Icons.favorite,color: Colors.black,), ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.add),
              label: 'Add',
              activeIcon: CircleAvatar(

                backgroundColor: AppColor.kBottomNavBarItemColor.withOpacity(.25),
                child:const Icon(Icons.add,color: Colors.black,), ),
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}
