import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/constant/Widgets/widgets.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View Model/ReplaceMealViewModel/ReplaceMealViewModel.dart';
import '../../constant/Widgets/Widgets1.dart';

class ReplaceMeal extends StatefulWidget {
  const ReplaceMeal({super.key});

  @override
  State<ReplaceMeal> createState() => _ReplaceMealState();
}

class _ReplaceMealState extends State<ReplaceMeal> {
  ReplaceMealViewModel controller = Get.put(ReplaceMealViewModel());

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
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(ImageAssets.BackIcon)),
                  SizedBox(width: 20),
                  Text(
                    "Replace Meal",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Gilory"),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SeeAll("Your previous Meal", "Friday 24,2023"),
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
                    ]),
                height: Get.height * 0.1200,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageAssets.chickenkabab),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: Get.height * 0.100,
                        width: Get.width * 0.400,
                      ),
                      Text(
                        "Nutrient-Rich Breakfast Delight: Scr\nambled Eggs and Whole-Grain\nBread\nNutrient-Rich Breakfast Delight: Scr",
                        style: TextStyle(
                            fontSize: 10,
                            color: ColorValues.darkSubtitleTextColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SeeAll1("Explore More Delicious Meal", "See All"),
              SizedBox(height: 10),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: controller.Image.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Breakfast(
                        controller.Image[index],
                        controller.Txt[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Upgrade to Premium Meals",
                  style: TextStyle(
                      fontSize: 14, color: ColorValues.darkSubtitleTextColor),
                ),
              ),
              SizedBox(
                height: Get.height * 0.4500 * controller.Image2.length / 2,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: controller.Image2.length,
                  physics: NeverScrollableScrollPhysics(),
                  // Use the length of your lists
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 330,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Meal(
                      controller.Image2[index % controller.Image2.length],
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
      ),
    );
  }
}
