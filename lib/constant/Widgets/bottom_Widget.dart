import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:food_app_getx/constant/color/color.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
      child: Container(
        height: 45, // Set your desired height here
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.5,
            ),
          ],
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: ColorValues.ElevatedColor,
            selectedLabelStyle: TextStyle(fontSize: 0),
            currentIndex: currentIndex,
            onTap: onTap,
            items: [
              _buildNavItem(ImageAssets.Home, currentIndex, 0),
              _buildNavItem(ImageAssets.Profile, currentIndex, 1),
              _buildNavItem(ImageAssets.Favourite, currentIndex, 2),
              _buildNavItem(ImageAssets.Setting, currentIndex, 3),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      String iconPath, int currentIndex, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              currentIndex == index ? ColorValues.whiteColor .withOpacity(0.3) : null,
        ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            color: currentIndex == index ? ColorValues.ElevatedColor : null,
            width: 20,
            height: 20,
          ),
        ),
      ),
      label: '',
    );
  }
}



Widget Textfield (
    String img,
    String Txt,
    ){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: TextFormField(
      decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            img,
            fit: BoxFit.scaleDown,
          ),
          hintText: Txt,
          hintStyle:
          TextStyle(fontSize: 14, color: ColorValues.lightgryColor)),
    ),
  );
}


Widget card (
    String img,
    String txt,
    ){
  return Card(
    child: ListTile(
      title: Row(
        children: [
          SvgPicture.asset(img),
          SizedBox(width: 20),
          Text(txt,style: TextStyle(fontSize: 15,color: ColorValues.blackColor),),
        ],
      ),
    ),
  );
}