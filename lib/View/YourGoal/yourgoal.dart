import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../View Model/YourGoal/yourgoalcontroller.dart';
import '../YourGender/yourgender.dart';

class YourGoal extends StatelessWidget {
  final YourGoalController controller = Get.put(YourGoalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/back_arrow.svg"),
                      SizedBox(width: 30),
                      Text(
                        "Fresh Feel",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.w500,
                            color: Color(0xffE54C38)),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
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
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: SvgPicture.asset(
                "assets/progressbar1.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
              child: Text(
                "What's your goal?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                buildGoalCard("Lose Weight",
                    "If your main goal is to shed off the extra weight in a healthy way, our team of clinical dietitians have designed special packages to help you reach your goal without depriving you from the food you enjoy!"),
                buildGoalCard("Gain Muscle",
                    "If your ultimate goal is to gain extra muscle, our team of clinical dietitians have created healthy balanced meal plans to help you build and maintain lean muscle mass. This will complement your exercise routine and amplify its effect."),
                buildGoalCard("Maintain Weight",
                    "If your main goal is to maintain your current weight and to stay healthy, our team of clinical dietitians has curated well-balanced and delicious meal plans to help guide you through your journey to attain your goal. Whether keeping it off or on, we have built plans that may be customized according to your goals."),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 260,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(YourGender());
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFDFDFDF), // Background color
                      onPrimary: Colors.black, // Text color
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
          ],
        ),
      ),
    );
  }

  Widget buildGoalCard(String title, String description) {
    return SizedBox(
      width: 320,
      height: 230,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(229, 76, 56, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  description,
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(158, 0, 0, 0),
                child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.selectGoal(title);
                      print(title);
                      // Add your button press logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Background color
                      onPrimary: Colors.black, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                    ),
                    child: Obx(
                      () => Text(
                        controller.selectedGoal.value == title
                            ? "Selected"
                            : "Select",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
