import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/View%20Model/GoalViewModel/GoalViewModel.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View Model/WidgetsViewModel/WidgetsViewModel.dart';
import '../../View/Breakfast Meal/Breakfast_Meal.dart';
import '../assets/assets.dart';
import '../color/color.dart';

Widget nutrients(
  String Txt1,
  String Txt2,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        Txt1,
        style: TextStyle(
          fontSize: 12,
          fontFamily: "Gilory",
          fontWeight: FontWeight.bold,
          color: ColorValues.darkSubtitleTextColor,
        ),
      ),
      SizedBox(height: 10),
      Text(
        Txt2,
        style: TextStyle(
          fontSize: 12,
          fontFamily: "Gilory",
          color: ColorValues.lightgryColor,
        ),
      ),
    ],
  );
}

Widget Breakfast(
  String img,
  String Txt,
) {
  WidgetsViewModel controller = Get.put(WidgetsViewModel());
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(20),
    ),
    height: 130,
    width: 150,
    child: Stack(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() {
              return GestureDetector(
                onTap: () {
                  controller.toggleLike();
                },
                child: SvgPicture.asset(
                  controller.isLiked.value
                      ? ImageAssets.DisLike
                      : ImageAssets.Like,
                ),
              );
            })),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            height: 25,
            width: Get.width,
            child: Center(
              child: Text(
                Txt,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: "Gilory",
                  color: ColorValues.whiteColor,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget SeeAll(
  String Txt1,
  String Txt2,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        Txt1,
        style: TextStyle(
          fontSize: 12,
          fontFamily: "Gilory",
          fontWeight: FontWeight.bold,
          color: ColorValues.darkSubtitleTextColor,
        ),
      ),
      SizedBox(height: 10),
      InkWell(
        onTap: () {
          Get.to(() => BreakfastMeal());
        },
        child: Text(
          Txt2,
          style: TextStyle(
            fontSize: 10,
            fontFamily: "Gilory",
            color: ColorValues.lightredColor,
          ),
        ),
      ),
    ],
  );
}

Widget SelectDinner(
  String img,
  String Txt,
  String txt1,
) {
  WidgetsViewModel controller = Get.put(WidgetsViewModel());
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          Txt,
          style: TextStyle(
            fontSize: 14,
            fontFamily: "Gilory",
            fontWeight: FontWeight.bold,
            color: ColorValues.darkSubtitleTextColor,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: ColorValues.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: Get.height * 0.1800,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 130,
                width: 150,
                child: Stack(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(() {
                          return GestureDetector(
                            onTap: () {
                              controller.toggleLike();
                            },
                            child: SvgPicture.asset(
                              controller.isLiked.value
                                  ? ImageAssets.DisLike
                                  : ImageAssets.Like,
                            ),
                          );
                        })),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                          ),
                        ),
                        height: 25,
                        width: Get.width,
                        child: Center(
                          child: Text(
                            txt1,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "Gilory",
                              color: ColorValues.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nutrient-Rich Breakfast Delight: Scr\nambled Eggs and Whole-Grain\nBread\nNutrient-Rich Breakfast Delight: Scr",
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: "Gilory",
                      color: ColorValues.darkSubtitleTextColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: Get.width * 0.2500,
                    height: 30,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: ColorValues.ElevatedColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          "Replace",
                          style: TextStyle(
                              fontSize: 10,
                              color: ColorValues.whiteColor,
                              fontFamily: "Gilory"),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}

Widget buildGoalCard(String title, String description) {
  GoalViewModel controller = Get.put(GoalViewModel());
  return Container(
    decoration: BoxDecoration(
        color: ColorValues.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 2.1),
          ),
        ]),
    height: Get.height * 0.2500,
    width: Get.width,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorValues.ElevatedColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          height: 40,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: ColorValues.whiteColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            description,
            style: TextStyle(
                fontSize: 12, color: ColorValues.darkSubtitleTextColor),
            textAlign: TextAlign.justify,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: Get.width * 0.4500,
              child: ElevatedButton(
                onPressed: () {
                  controller.selectGoal(title);
                  print(title);
                  // Add your button press logic here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Background color
                  onPrimary: Colors.black, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),
                ),
                child: Obx(
                  () => Text(
                    controller.selectedGoal.value == title
                        ? "Selected"
                        : "Select",
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}