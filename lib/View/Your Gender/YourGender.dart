import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/View/Your%20Profile/YourProfile.dart';
import 'package:get/get.dart';

import '../../View Model/YourGenderViewModel/YourGenderViewModel.dart';
import '../../constant/Widgets/Widgets1.dart';
import '../../constant/color/color.dart';

class YourGender extends StatefulWidget {
  @override
  State<YourGender> createState() => _YourGenderState();
}

class _YourGenderState extends State<YourGender> {
  final YourGenderViewModel controller = Get.put(YourGenderViewModel());

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
            stepper(ColorValues.ElevatedColor, ColorValues.whiteColor,
                ColorValues.whiteColor, ColorValues.whiteColor),
            SizedBox(height: 20),
            Align(alignment: Alignment.topLeft,
              child: Text(
                "Your Gender",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: ColorValues.blackColor),
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => buildGenderButton(
                "Male",
                controller.selectedGender.value ==
                    "Male", // Check if "Male" is selected
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => buildGenderButton(
                "Female",
                controller.selectedGender.value ==
                    "Female", // Check if "Female" is selected
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 260,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => YourProfile());
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorValues.checkColor, // Background color
                  onPrimary: ColorValues.whiteColor, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20.0), // Adjust the border radius as needed
                  ),
                ),
                child: Text("Continue"),
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
