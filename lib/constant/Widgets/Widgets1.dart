import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_getx/View%20Model/GoalTwoViewModel/GoalTwoViewModel.dart';
import 'package:food_app_getx/View%20Model/YourGenderViewModel/YourGenderViewModel.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../color/color.dart';

Widget stepper(
  Color color1,
  Color color2,
  Color color3,
  Color color4,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          CupertinoIcons.circle_fill,
          color: ColorValues.ElevatedColor,
        ),
        step2(color1),
        step2(color2),
        step2(color3),
        step2(color4),
      ],
    ),
  );
}

Widget step1(Color color) {
  return Row(
    children: [
      Container(
        height: 5,
        width: 50,
        color: color,
      ),
      Icon(
        CupertinoIcons.circle_fill,
        color: color,
      ),
    ],
  );
}

Widget step2(Color color) {
  return Row(
    children: [
      // Icon(CupertinoIcons.circle,color: color,),
      Container(
        height: 5,
        width: 50,
        color: color,
      ),
      Icon(
        CupertinoIcons.circle_fill,
        color: color,
      ),
    ],
  );
}

Widget buildGenderButton(String Txt, bool isSelected) {
  YourGenderViewModel controller = Get.put(YourGenderViewModel());
  final Color containerColor =
      isSelected ? ColorValues.ElevatedColor : ColorValues.whiteColor;
  final Color textColor =
      isSelected ? ColorValues.whiteColor : ColorValues.lightgryColor;

  return InkWell(
    onTap: () {
      isSelected ? controller.deselectGender() : controller.selectGender(Txt);
    },
    child: Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: ColorValues.lightgryColor,
            blurRadius: 5,
            offset: Offset(0, 2.1),
          ),
        ],
      ),
      height: 40,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            Txt,
            style: TextStyle(fontSize: 14, color: textColor),
          ),
        ),
      ),
    ),
  );
}

Widget Profile(String Txt, bool isSelected) {
  return Container(
    decoration: BoxDecoration(
        color: isSelected ? ColorValues.ElevatedColor : ColorValues.whiteColor,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 2,
              offset: Offset(0, 2.1))
        ]),
    height: 42,
    width: Get.width,
    child: Padding(
      padding: const EdgeInsets.only(left: 20, top: 12),
      child: Text(
        Txt,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: isSelected ? Colors.white : ColorValues.lightgryColor,
        ),
      ),
    ),
  );
}

Widget Goals(
  String Txt1,
  String Txt2,
) {
  return Container(
      decoration: BoxDecoration(
          color: ColorValues.whiteColor,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                offset: Offset(0, 2.1))
          ]),
      height: 42,
      width: Get.width,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorValues.whiteColor,
              borderRadius: BorderRadius.circular(32),
            ),
            height: 42,
            width: Get.width * 0.3700,
            child: Center(
              child: Text(
                Txt1,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorValues.blackColor),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 20),
            child: Container(
              width: Get.width * 0.4,
              // You can adjust the width as needed
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintText: Txt2,
                  hintStyle: TextStyle(
                    fontSize: 10,
                    color: ColorValues.lightgryColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ));
}

Widget SecGoal(
  String Txt,
  int index,
) {
  GoalTwoViewModel controller =
      Get.find(); // Use Get.find() to get the existing controller

  return Obx(
    () => InkWell(
      onTap: () {
        controller.selectIndex(index);
      },
      child: Container(
        decoration: BoxDecoration(
          color: controller.selectedIndex.value == index
              ? ColorValues.ElevatedColor // Set to red if selected
              : ColorValues.whiteColor, // Set to gray if not selected
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 2,
              offset: Offset(0, 2.1),
            ),
          ],
        ),
        height: 42,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Text(
            Txt,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: ColorValues.darkSubtitleTextColor,
            ),
          ),
        ),
      ),
    ),
  );
}


Widget Meal(
    String img,
    String Txt1,
    String Txt2,
    String Txt3,
    String Txt4,
    ) {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
            color: ColorValues.whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5)
            ]),
        height: Get.height * 0.4,
        width: Get.width * 0.4300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(img), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              height: Get.height * 0.2,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorValues.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 0.5,
                        )
                      ]),
                  height: 35,
                  width: 90,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Txt1,
                          style: TextStyle(
                              fontSize: 8, color: ColorValues.TxtColor),
                        ),
                        SizedBox(height: 3),
                        Text(
                          Txt2,
                          style: TextStyle(
                              fontSize: 8,
                              color: ColorValues.TxtColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorValues.ElevatedColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 0.5,
                        )
                      ]),
                  height: 35,
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "20% OFF",
                          style: TextStyle(
                              fontSize: 8, color: ColorValues.whiteColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                Txt3,
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: "Gilory",
                    color: ColorValues.TxtColor),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                Txt4,
                style: TextStyle(
                    fontSize: 8,
                    fontFamily: "Gilory",
                    color: ColorValues.lightgryColor),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 0.5,
                color: ColorValues.lightgryColor,
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting from",
                        style: TextStyle(
                            fontSize: 7,
                            fontFamily: "Gilory",
                            color: ColorValues.lightgryColor),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "104 AED/day",
                        style: TextStyle(
                            fontSize: 9,
                            fontFamily: "Gilory",
                            color: ColorValues.TxtColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                    height: 22,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => null);
                        print('Button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: ColorValues.ElevatedColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Text(
                        'View plan',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: "Gilory",
                          color: ColorValues.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}