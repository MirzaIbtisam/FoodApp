import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constant/assets/assets.dart';
import '../../constant/color/color.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(ImageAssets.BackIcon)),
                    SizedBox(width: 20),
                    Text(
                      "Favourites ",
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorValues.darkSubtitleTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(),
              ],
            ),
          ),
          SizedBox(height: 70),
          SvgPicture.asset(ImageAssets.FavouriteScreen),
          SizedBox(height: 20),
          Text(
            "No Favorites Yet!",
            style: TextStyle(
                fontSize: 20,
                color: ColorValues.ElevatedColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Text(
            "Keep track of all the meals you like and keep\nthem in mind",
            style: TextStyle(
                fontSize: 14,
                color: ColorValues.blackColor,
                fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          SizedBox(
            width: Get.width * 0.4,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: ColorValues.ElevatedColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  "Start",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorValues.whiteColor,
                      fontFamily: "Gilory"),
                )),
          ),
        ],
      ),
    );
  }
}