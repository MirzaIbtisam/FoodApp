import 'package:flutter/material.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../View/Bottom bar/Bottom_Bar.dart';
import '../../constant/color/color.dart';

class MainScreenViewModel extends GetxController {
  RxList<Post> posts = <Post>[].obs;

  void showDialogBox(BuildContext context) {
    Get.defaultDialog(
      title: "You want meal for",
      titleStyle:
          TextStyle(fontSize: 14, color: ColorValues.darkSubtitleTextColor),
      content: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorValues.whiteColor,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(0, 2.1),
                          ),
                        ]),
                    height: 30,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Days",
                            style: TextStyle(
                                fontSize: 10, color: ColorValues.ElevatedColor),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: ColorValues.lightgryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorValues.ElevatedColor,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(0, 2.1),
                          ),
                        ]),
                    height: 30,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "3 Weeks",
                            style: TextStyle(
                                fontSize: 10, color: ColorValues.whiteColor),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: ColorValues.whiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorValues.whiteColor,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(0, 2.1),
                          ),
                        ]),
                    height: 30,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Month",
                            style: TextStyle(
                                fontSize: 10, color: ColorValues.ElevatedColor),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: ColorValues.lightgryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 260,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BottomNavBarV2()), // Push MyScreen onto the stack.
                );
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
        ],
      ),
    );
  }

  List<String> image = [
    ImageAssets.chickenkabab,
    ImageAssets.ChickenBoti,
    ImageAssets.Potatosnaks,
  ];

  List<String> txt = [
    "Full Day Premium",
    "Lunch + Dinner",
    "Breakfast",
  ];

  List<String> txt1 = [
    "Includes breakfast, Lunch and\nDinner with slides and snacks",
    "Includes slides and snacks",
    "Includes slides and snacks",
  ];
}

class Post {
  RxList<String> mainimage = <String>[].obs;
  RxString mainimagetext = ''.obs;
  RxString mainimagetext2 = ''.obs;
  RxString percentoff = ''.obs;
  RxString caloriesgram = ''.obs;
  RxString proteingram = ''.obs;
  RxString carbsgram = ''.obs;
  RxString fatsgram = ''.obs;
  RxList<String> pakagetypeimage = <String>[].obs;
  RxString fullday = ''.obs;
  RxString premium = ''.obs;
  RxString pakagetypedescription = ''.obs;
  RxString suggessted = ''.obs;
  RxString suggessted2 = ''.obs;
  RxString suggessted3 = ''.obs;
  RxString suggessted4 = ''.obs;
  RxString suggessted5 = ''.obs;
  RxString suggessted6 = ''.obs;
  RxString pakageprice = ''.obs;
  RxString inclVAT = ''.obs;
  RxString subtotal = ''.obs;

  Post({
    required this.mainimage,
    required this.mainimagetext,
    required this.mainimagetext2,
    required this.percentoff,
    required this.caloriesgram,
    required this.proteingram,
    required this.carbsgram,
    required this.fatsgram,
    required this.pakagetypeimage,
    required this.fullday,
    required this.premium,
    required this.pakagetypedescription,
    required this.suggessted,
    required this.suggessted2,
    required this.suggessted3,
    required this.suggessted4,
    required this.suggessted5,
    required this.suggessted6,
    required this.pakageprice,
    required this.inclVAT,
    required this.subtotal,
  });
}
