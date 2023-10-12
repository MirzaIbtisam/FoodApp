import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/View/Chooes%20Meal%20Plan/Meal_Plan.dart';
import 'package:food_app_getx/View/Notification/Notification.dart';
import 'package:food_app_getx/constant/Widgets/Widget3.dart';

import 'package:get/get.dart';

import '../../View Model/HomeScreenViewModel/HomeScreenViewModel.dart';

import '../../constant/Widgets/widgets.dart';
import '../../constant/assets/assets.dart';
import '../../constant/color/color.dart';
import '../Bottom bar/Bottom_Bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenViewModel controller = Get.put(HomeScreenViewModel());

  // Initialize your controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                          color: ColorValues.ElevatedColor,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(() => NotificationScreen());
                          },
                          child: NotiDel(ImageAssets.Notification)),
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
                          color: ColorValues.darkSubtitleTextColor,
                        ),
                      ),
                      SizedBox(
                        width: Get.width * .3,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => MealPlan());
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Full Day Premium",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Gilory",
                        fontWeight: FontWeight.bold,
                        color: ColorValues.darkSubtitleTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: Get.width * .5,
                    height: 32,
                    child: ElevatedButton(
                      onPressed: () {},
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
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorValues.ElevatedColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    height: 40,
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: ColorValues.whiteColor,
                            size: 15,
                          ),
                          onPressed: controller.navigateToPreviousDay,
                        ),
                        Obx(() => Text(
                              ' ${controller.formattedDate} ',
                              style: TextStyle(fontSize: 12),
                            )),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: ColorValues.whiteColor,
                            size: 15,
                          ),
                          onPressed: controller.navigateToNextDay,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your nutrients for that day',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Gilory",
                        fontWeight: FontWeight.bold,
                        color: ColorValues.darkSubtitleTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                      ],
                    ),
                    height: 80,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          nutrients("Calories", "1200"),
                          nutrients("Proteins", "60-90g"),
                          nutrients("Carbs", "120-150g"),
                          nutrients("Fat", "120-150g"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SeeAll("Select your Breakfast", "See All"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: controller.img.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Breakfast(
                        controller.img[index],
                        controller.Txt[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SeeAll("Select your Lunch", "See All"),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: controller.img2.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Breakfast(
                        controller.img2[index],
                        controller.Txt1[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SeeAll("Select your Dinner", "See All"),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: controller.img3.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Breakfast(
                        controller.img3[index],
                        controller.Txt2[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SeeAll("Select Your Snack", "See All"),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: controller.img4.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Breakfast(
                        controller.img4[index],
                        controller.Txt3[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
