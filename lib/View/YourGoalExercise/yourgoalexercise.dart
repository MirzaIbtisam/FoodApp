import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../View Model/YourGoalExerciseController/yourgoalexercisecontroller.dart';
import '../DietType/diettype.dart';

class yourgoalexercise extends StatelessWidget {
  final YourGoalExerciseController controller =
      Get.put(YourGoalExerciseController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        color: Color(0xffE54C38),
                      ),
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
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
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
              "assets/progressbar4.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 125, 0),
            child: Text(
              "What's your goal?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildGoalCard("No Exercise", "                 Sedentary Lifestyle"),
          buildGoalCard("Light Exercise", "            1-2 times/week"),
          buildGoalCard("Moderate Exercise", "   3-4 times/week"),
          buildGoalCard("Heavy Exercise", "          3-4 times/week"),
          buildGoalCard("Athlete", "                           3-4 times/week"),
          SizedBox(
            height: 30,
          ),

          // Obx(() => Text(
          //   'Selected Goal: ${controller.selectedGoal.value}',
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // )),
          SizedBox(
            width: 260,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Get.to(DietType());
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => YourGender()),
                // );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDFDFDF), // Background color
                onPrimary: Colors.black, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ), // Adjust the border radius as needed
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
    );
  }

  Widget buildGoalCard(String title, String subtitle) {
    return InkWell(
      onTap: () {
        controller.updateSelectedGoal(title);
        print(title);
      },
      child: SizedBox(
        height: 50,
        width: 330,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Text(
                '     $title',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '$subtitle',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
