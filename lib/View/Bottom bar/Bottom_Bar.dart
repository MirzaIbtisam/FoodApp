import 'package:flutter/material.dart';
import 'package:food_app_getx/View/Edit%20Profile/Edit_Profile.dart';
import 'package:food_app_getx/View/Home%20Screen/Home_Screen.dart';
import '../../constant/Widgets/bottom_Widget.dart';
import '../Favourite/Favourite.dart';
import '../Setting/Setting.dart';

class BottomNavBarV2 extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<BottomNavBarV2> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    EditProfile(),
    Favourite(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: _screens[_currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomBottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int) {
              setState(() {
                _currentIndex = int;
              });
            },
          ),
        ));
  }
}
