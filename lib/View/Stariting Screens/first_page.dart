import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/View/Sign%20In/Sign_In.dart';
import 'package:food_app_getx/View/Welcome/Welcome.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstScreensViewModel extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentIndex = 0.obs;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class FirstScreens extends StatefulWidget {
  const FirstScreens({Key? key}) : super(key: key);

  @override
  State<FirstScreens> createState() => _FirstScreensState();
}

class _FirstScreensState extends State<FirstScreens> {
  final FirstScreensViewModel controller = Get.put(FirstScreensViewModel());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: [
          FirstScreenContent(
            controller: controller.pageController,
            key: PageStorageKey('FirstScreen'),
          ),
          SecondScreenContent(
            controller: controller.pageController,
            key: PageStorageKey('SecondScreen'),
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
    print('Rebuild');
    return Column(
      children: [
        SizedBox(height: 80),
        SvgPicture.asset(
          "assets/Nutrition_Foods.svg",
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
              color: Color(0xffa4a0a0),
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
                color: Color(0xffe65744),
                width: 1.0,
              ),
            ),
            child: Text(
              'Next',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Gilory",
                color: Color(0xffE54C38),
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/Food_Pic.svg",
                height: Get.height * 0.5950,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440),
              child: Center(
                child: SmoothPageIndicator(
                  controller: widget.controller, // Use widget.controller
                  count: 2,
                  effect: WormEffect(
                    activeDotColor: Color(0xffe54c38),
                    dotColor: Color(0xffd4d4d6),
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
    print('Rebuild');
    return Column(
      children: [
        SizedBox(height: 80),
        SvgPicture.asset(
          "assets/Nutrition_Foods.svg",
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
              color: Color(0xffa4a0a0),
            ),
          ),
        ),
        SizedBox(height: 50),
        SizedBox(
          width: Get.width * .5,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => Welcome());
              print('Button pressed');
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              elevation: 0.0,
              side: BorderSide(
                color: Color(0xffe65744),
                width: 1.0,
              ),
            ),
            child: Text(
              'Next',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Gilory",
                color: Color(0xffE54C38),
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/Food_Pic.svg",
                height: Get.height * 0.5950,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440),
              child: Center(
                child: SmoothPageIndicator(
                  controller: widget.controller, // Use widget.controller
                  count: 2,
                  effect: WormEffect(
                    activeDotColor: Color(0xffe54c38),
                    dotColor: Color(0xffd4d4d6),
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
