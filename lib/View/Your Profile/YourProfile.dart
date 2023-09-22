import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/View/Goal%20One/GoalOne.dart';
import 'package:get/get.dart';

import '../../View Model/YourProfileViewModel/YourProfileViewModel.dart';
import '../../constant/Widgets/Widgets1.dart';
import '../../constant/color/color.dart';

class YourProfile extends StatefulWidget {
  const YourProfile({super.key});

  @override
  State<YourProfile> createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
  late YourProfileViewModel controller;

  @override
  void initState() {
    super.initState();
    // Initialize the controller with context when the widget is created
    controller = Get.put(YourProfileViewModel(context: context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                        color: ColorValues.ElevatedColor,
                      ),
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
                        offset: Offset(0, 5),
                      )
                    ],
                  ),
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
            stepper(
              ColorValues.ElevatedColor,
              ColorValues.ElevatedColor,
              ColorValues.whiteColor,
              ColorValues.whiteColor,
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Your Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: ColorValues.blackColor,
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                controller.selectContainer("Height");
                controller.showHeightDialog(context);
              },
              child: Obx(
                () => Profile(
                  "Height",
                  controller.selectedContainer == "Height",
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                controller.selectContainer("Weight");
                controller.showWeightDialog(context);
              },
              child: Obx(
                () => Profile(
                  "Weight",
                  controller.selectedContainer == "Weight",
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                controller.selectContainer("Age");
                controller.showAgeDialog(context);
              },
              child: Obx(
                () => Profile(
                  "Age",
                  controller.selectedContainer == "Age",
                ),
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 260,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => GoalOne());
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorValues.checkColor,
                  onPrimary: ColorValues.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
