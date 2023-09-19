import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/View/Chooes%20Meal%20Plan/Meal_Plan.dart';
import 'package:food_app_getx/View/Sign%20In/Sign_In.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:country_picker/country_picker.dart';
import '../../View Model/First Screens ViewModel/FirstScreensViewModel.dart';
import '../../constant/color/color.dart';

class FirstScreens extends StatefulWidget {
  const FirstScreens({Key? key}) : super(key: key);

  @override
  State<FirstScreens> createState() => _FirstScreensState();
}

class _FirstScreensState extends State<FirstScreens> {
  final FirstScreensViewModel controller = Get.put(FirstScreensViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: [
          FirstScreenContent(
            controller: controller.pageController,
            key: const PageStorageKey('FirstScreen'), // Unique key
          ),
          SecondScreenContent(
            controller: controller.pageController,
            key: const PageStorageKey('SecondScreen'), // Unique key
          ),
          ThirdScreenContent(
            controller: controller.pageController,
            key: const PageStorageKey('ThirdScreen'), // Unique key
          ),
        ],
        onPageChanged: (index) {
          controller.currentIndex.value = index;
        },
      ),
    );
  }
}

class FirstScreenContent extends StatefulWidget {
  final PageController controller;

  FirstScreenContent({required this.controller, Key? key}) : super(key: key);

  @override
  _FirstScreenContentState createState() => _FirstScreenContentState();
}

class _FirstScreenContentState extends State<FirstScreenContent>
    with AutomaticKeepAliveClientMixin<FirstScreenContent> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        SvgPicture.asset(
          ImageAssets.Nutrition_Foods,
          height: Get.height * .1,
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetu elit, sed eiusmod tempor Lorem ipsum dolor sit amet, consectetu elit, sed do eiusmod tempor",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Gilory",
              color: ColorValues.darkBgColor,
            ),
          ),
        ),
        SizedBox(height: 50),
        SizedBox(
          width: Get.width * .5,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => SignIn());
              print('Button pressed');
            },
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
              'Next',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Gilory",
                color: ColorValues.ElevatedColor,
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                ImageAssets.Food_Pic,
                height: Get.height * 0.5950,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440),
              child: Center(
                child: SmoothPageIndicator(
                  controller: widget.controller, // Use widget.controller
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: ColorValues.ElevatedColor,
                    dotColor: ColorValues.dotColor,
                    spacing: 8.0,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SecondScreenContent extends StatefulWidget {
  final PageController controller;

  SecondScreenContent({required this.controller, Key? key}) : super(key: key);

  @override
  _SecondScreenContentState createState() => _SecondScreenContentState();
}

class _SecondScreenContentState extends State<SecondScreenContent>
    with AutomaticKeepAliveClientMixin<SecondScreenContent> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        SvgPicture.asset(
          ImageAssets.Nutrition_Foods,
          height: Get.height * .1,
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetu elit, sed eiusmod tempor Lorem ipsum dolor sit amet, consectetu elit, sed do eiusmod tempor",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Gilory",
              color: ColorValues.darkBgColor,
            ),
          ),
        ),
        SizedBox(height: 50),
        SizedBox(
          width: Get.width * .5,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => null);
              print('Button pressed');
            },
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
              'Next',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Gilory",
                color: ColorValues.ElevatedColor,
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                ImageAssets.Food_Pic,
                height: Get.height * 0.5950,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440),
              child: Center(
                child: SmoothPageIndicator(
                  controller: widget.controller, // Use widget.controller
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: ColorValues.ElevatedColor,
                    dotColor: ColorValues.dotColor,
                    spacing: 8.0,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ThirdScreenContent extends StatefulWidget {
  final PageController controller;

  ThirdScreenContent({required this.controller, Key? key}) : super(key: key);

  @override
  _ThirdScreenContentState createState() => _ThirdScreenContentState();
}

class _ThirdScreenContentState extends State<ThirdScreenContent>
    with AutomaticKeepAliveClientMixin<ThirdScreenContent> {
  final ThirdScreenController controller = Get.put(ThirdScreenController());
  Country? _selectedCountry;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(height: 40),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              _selectedCountry != null
                  ? 'Selected Country: ${_selectedCountry!.name}'
                  : 'Select a Country',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SvgPicture.asset(
            ImageAssets.Veg_Fry,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Fresh Feel!',
                style: TextStyle(
                    fontSize: 22, color: ColorValues.ElevatedColor),
              ),
            ],
          ),
          SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              'Make menu changes up to 48 hours prior to delivery & cancel your meal for redeemable credits! ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          InkWell(
            onTap: () {
              // Change the color when tapped
              controller.togglePickPlan();

              // Delay the navigation by a short duration (e.g., 200 milliseconds)
              Future.delayed(Duration(milliseconds: 200), () {
                if (controller.pickPlan.value) {
                  // Navigate to a new screen
                  Get.to(() => MealPlan()); // Replace YourNewScreen with the screen you want to navigate to
                }
              });
            },
            child: Obx(() => Container(
                  decoration: BoxDecoration(
                    color: controller.pickPlan.value
                        ? ColorValues.ElevatedColor
                        : ColorValues.checkColor,
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                  height: 45,
                  width: 300,
                  child: Center(
                    child: Text(
                      'Help me pick a plan',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Gilory",
                        color: ColorValues.whiteColor,
                      ),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              // Change the color when tapped
              controller.toggleIAlreadyHave();

              // Delay the navigation by a short duration (e.g., 200 milliseconds)
              Future.delayed(Duration(milliseconds: 200), () {
                if (controller.iAlreadyHave.value) {
                  // Navigate to a new screen
                  Get.to(() => null); // Replace YourNewScreen with the screen you want to navigate to
                }
              });
            },
            child: Obx(() => Container(
              decoration: BoxDecoration(
                color: controller.iAlreadyHave.value
                    ? ColorValues.ElevatedColor
                    : ColorValues.checkColor,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              height: 45,
              width: 300,
              child: Center(
                child: Text(
                  'I already know what I want',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Gilory",
                    color: ColorValues.whiteColor,
                  ),
                ),
              ),
            )),
          ),

          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an Account?',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Gilory",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => SignIn());
                },
                child: Text(
                  ' Log in',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Gilory",
                    color: ColorValues.ElevatedColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SmoothPageIndicator(
            controller: widget.controller, // Use widget.controller
            count: 3,
            effect: WormEffect(
              activeDotColor: ColorValues.ElevatedColor,
              dotColor: ColorValues.dotColor,
              spacing: 8.0,
            ),
          )
        ],
      ),
    );
  }
}

