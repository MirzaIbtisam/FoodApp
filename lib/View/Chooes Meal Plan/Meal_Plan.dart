import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View Model/MealPlanViewModel/MealPlanViewModel.dart';
import '../../constant/assets/assets.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({super.key});

  @override
  State<MealPlan> createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  MealPlanController controller = Get.put(MealPlanController());

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
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorValues.TxtColor,
                  ),
                ),
                Text(
                  "Choose meal plan",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorValues.TxtColor,
                      fontFamily: "Gilory",
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorValues.whiteColor,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 5)
                      ]),
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(
                    ImageAssets.whatsapp,
                    fit: BoxFit.scaleDown,
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Need help finding the right meal plan?",
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: "Gilory",
                          color: ColorValues.darkTitleSmallTextColor),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Tell me a little bit about your goals and I'll give\nyou the best meal plan for you",
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: "Gilory",
                          color: ColorValues.TxtColor),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: Get.width * .5,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => null);
                          print('Button pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: ColorValues.whiteColor,
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
                          "Let's go",
                          style: TextStyle(
                            fontSize: 9,
                            fontFamily: "Gilory",
                            color: ColorValues.ElevatedColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  ImageAssets.Dukan_diet_1_,
                  height: Get.height * 0.1650,
                )
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Choose the right meal plan for you",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Gilory",
                  color: ColorValues.blackColor,
                ),
              ),
            ),
            Flexible(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controller.img.length,
                // Use the length of your lists
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 330,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Meal(
                    controller.img[index % controller.img.length],
                    controller.Txt1[index % controller.Txt1.length],
                    controller.Txt2[index % controller.Txt2.length],
                    controller.Txt3[index % controller.Txt3.length],
                    controller.Txt4[index % controller.Txt4.length],
                  );
                },
              ),
            ),
          ],
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
}
