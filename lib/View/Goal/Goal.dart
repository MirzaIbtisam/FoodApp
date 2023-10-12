import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/View/Your%20Gender/YourGender.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../View Model/GoalViewModel/GoalViewModel.dart';
import '../../constant/Widgets/Widgets1.dart';
import '../../constant/Widgets/widgets.dart';

class Goal extends StatefulWidget {
  const Goal({super.key});

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  GoalViewModel controller = Get.put(GoalViewModel());
  int currentStep = 0;

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
                        onTap: (){
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
              stepper(ColorValues.whiteColor, ColorValues.whiteColor,
                  ColorValues.whiteColor, ColorValues.whiteColor),
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
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  buildGoalCard("Lose Weight",
                      "If your main goal is to shed off the extra weight in a healthy way, our team of clinical dietitians have designed special packages to help you reach your goal without depriving you from the food you enjoy!"),
                  SizedBox(height: 20),
                  buildGoalCard("Gain Muscle",
                      "If your ultimate goal is to gain extra muscle, our team of clinical dietitians have created healthy balanced meal plans to help you build and maintain lean muscle mass. This will complement your exercise routine and amplify its effect."),
                  SizedBox(height: 20),
                  buildGoalCard("Maintain Weight",
                      "If your main goal is to maintain your current weight and to stay healthy, our team of clinical dietitians has curated well-balanced and delicious meal plans to help guide you through your journey to attain your goal. Whether keeping it off or on, we have built plans that may be customized according to your goals."),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 260,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => YourGender());
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
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}