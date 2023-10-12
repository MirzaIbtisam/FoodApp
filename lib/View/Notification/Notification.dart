import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/constant/Widgets/Widget3.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                      "Notification ",
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorValues.darkSubtitleTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                NotiDel(ImageAssets.DeleteIcon)
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Todayrecent("Today", "2"),
          ),
          SizedBox(height: 20),
          NotificationBOx(
              "Your request has been sent to the admin wait for approval"),
          SizedBox(height: 5),
          NotificationBOx(
              "Your request is accepted click here to buy the meal"),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Todayrecent("Recent", "3"),
          ),
          SizedBox(height: 10),
          NotificationBOx(
              "Your request has been sent to the admin wait for approval"),
          SizedBox(height: 5),
          NotificationBOx(
              "Your request is accepted click here to buy the meal"),
          SizedBox(height: 5),
          NotificationBOx(
              "Your request is accepted click here to buy the meal"),
        ],
      ),
    );
  }
}
