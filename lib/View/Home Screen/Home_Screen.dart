import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi Anas !",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Gilory",
                          fontWeight: FontWeight.bold,
                      color: ColorValues.ElevatedColor),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorValues.whiteColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(ImageAssets.Notification,fit: BoxFit.scaleDown,),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Maintain Balance Convenience",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Gilory",
                          color: ColorValues.darkSubtitleTextColor),
                    ),
                    SizedBox(
                      width: Get.width * .3,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => null);
                          // Add your button press logic here
                          print('Button pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: ColorValues.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          elevation: 0.0,
                        ),
                        child: Text(
                          'Buy Plan',
                          style: TextStyle(
                            fontSize: 9,
                            fontFamily: "Gilory",
                            color: ColorValues.lightredColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(alignment: Alignment.topLeft,
                  child: Text(
                    "Full Day Premium",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Gilory",
                        fontWeight: FontWeight.bold,
                        color: ColorValues.darkSubtitleTextColor),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: Get.width * .5,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => null);
                      print('Button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      elevation: 0.0,
                      side: BorderSide(
                        color: ColorValues.ElevatedColor,
                        width: 1.0,
                      ),
                    ),
                    child: Text(
                      '3 Weeks Plan',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Gilory",
                        color: ColorValues.ElevatedColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
