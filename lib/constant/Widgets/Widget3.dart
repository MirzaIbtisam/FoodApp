import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/View%20Model/HomeScreenViewModel/HomeScreenViewModel.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../assets/assets.dart';
import '../color/color.dart';

Widget NotiDel(
  String Image,
) {
  return Container(
    decoration: BoxDecoration(
      color: ColorValues.whiteColor,
      borderRadius: BorderRadius.circular(10),
    ),
    height: 30,
    width: 30,
    child: SvgPicture.asset(
      Image,
      fit: BoxFit.scaleDown,
    ),
  );
}

Widget Todayrecent(
  String Txt,
  String Txt2,
) {
  return Row(
    children: [
      Text(
        Txt,
        style: TextStyle(
            fontSize: 14,
            color: ColorValues.darkSubtitleTextColor,
            fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          color: ColorValues.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 20,
        width: 20,
        child: Center(
          child: Text(
            Txt2,
            style: TextStyle(
                fontSize: 10,
                color: ColorValues.ElevatedColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}

Widget NotificationBOx(
  String Txt,
) {
  return Container(
    decoration: BoxDecoration(
      color: ColorValues.whiteColor,
    ),
    height: 70,
    width: Get.width,
    child: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: ColorValues.whiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 35,
              width: 35,
              child: SvgPicture.asset(
                ImageAssets.Noti,
                fit: BoxFit.scaleDown,
              )),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Txt,
                style: TextStyle(
                  fontSize: 11,
                  color: ColorValues.blackColor,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "10:25 AM",
                style: TextStyle(
                  fontSize: 9,
                  color: ColorValues.checkColor,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget PackageType(
  String image,
  String txt,
  String txt1,
) {
  return Container(
    decoration: BoxDecoration(
      color: ColorValues.whiteColor,
      borderRadius: BorderRadius.circular(32),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 5,
          offset: Offset(0, 2.1),
        )
      ],
    ),
    height: Get.height * 0.3,
    width: Get.width * 0.4800,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          height: Get.height * 0.2,
          width: Get.width,
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 30,
            width: 80,
            color: ColorValues.ElevatedColor,
            child: Center(
              child: Text(
                txt,
                style: TextStyle(
                  color: ColorValues.whiteColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              txt1,
              style: TextStyle(
                color: ColorValues.dotColor,
                fontSize: 8,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}