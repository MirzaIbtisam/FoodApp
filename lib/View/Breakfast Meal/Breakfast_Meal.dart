import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app_getx/View/Select/Select.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';

import '../../View Model/BreakFastMealViewModel/BreakFastMealViewModel.dart';
import '../../constant/Widgets/widgets.dart';
import '../New Offers/NewOffers.dart';

class BreakfastMeal extends StatefulWidget {
  bool isSelectBreakfast;

  BreakfastMeal({Key? key, required this.isSelectBreakfast}) : super(key: key);

  @override
  State<BreakfastMeal> createState() => _BreakfastMealState();
}

class _BreakfastMealState extends State<BreakfastMeal> {
  BreakFastMealViewModel controller = Get.put(BreakFastMealViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorValues.darkSubtitleTextColor,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  widget.isSelectBreakfast
                      ? "Select Breakfast Meal"
                      : "Replace More Delicious Meal",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorValues.darkSubtitleTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: controller.files.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    image: DecorationImage(
                      image: AssetImage(
                        controller.files[controller.currentIndex
                            .value], // Use currentIndex.value to get the value from the observable.
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: controller.files.length,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  controller.currentIndex.value = index; // Update currentIndex using GetX.
                },
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Nutrient-Rich Breakfast Delight: Scrambled Eggs and Whole-Grain Bread",
                style: TextStyle(
                  fontFamily: "Gilory",
                  fontSize: 11,
                  color: ColorValues.TxtColor,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Nutrients',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover Our Exciting New Offerings",
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
                    Get.to(() => NewOffers());
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Gilory",
                      color: ColorValues.lightredColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Flexible(
              child: SizedBox(
                height: 250,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 180,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Breakfast(controller.img[index], controller.Txt[index]);
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: Get.width * 0.7,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => Select());
                  },
                  style: ElevatedButton.styleFrom(
                      primary: ColorValues.ElevatedColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    widget.isSelectBreakfast ? "Select" : "Replace",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorValues.whiteColor,
                        fontFamily: "Gilory"),
                  )),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
