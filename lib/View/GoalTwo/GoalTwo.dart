import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/View%20Model/GoalTwoViewModel/GoalTwoViewModel.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constant/Widgets/Widgets1.dart';
import '../../constant/color/color.dart';

class GoalTwo extends StatefulWidget {
  const GoalTwo({super.key});

  @override
  State<GoalTwo> createState() => _GoalTwoState();
}

class _GoalTwoState extends State<GoalTwo> {
  GoalTwoViewModel controller = Get.put(GoalTwoViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: ColorValues.lightpurpuleColor,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Fresh Feel",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.w500,
                            color: ColorValues.ElevatedColor),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorValues.whiteColor,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2,
                              offset: Offset(0, 5))
                        ]),
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(
                      "assets/whatsapp.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              stepper(ColorValues.ElevatedColor, ColorValues.ElevatedColor,
                  ColorValues.ElevatedColor, ColorValues.ElevatedColor),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "What's your goal?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: ColorValues.blackColor),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                itemCount: controller.Txt.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SecGoal(controller.Txt[index],index),
                  );
                },
              ),
              SizedBox(height: 40),
              SizedBox(
                width: Get.width * 0.7500,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => GoalTwo());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorValues.checkColor, // Background color
                    onPrimary: ColorValues.whiteColor, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the border radius as needed
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Gilory",
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
