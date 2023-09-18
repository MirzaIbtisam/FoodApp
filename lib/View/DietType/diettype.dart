import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../View Model/DietTypeController/diettypecontroller.dart';

class DietType extends StatelessWidget {
  DietType({Key? key}) : super(key: key);

  final DietController controller = Get.put(DietController());
  // Initialize the controller
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: SvgPicture.asset(
                "assets/progressbar5.svg",
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
              height: 10,
            ),
            CustomElevatedButton(label: 'Balance Diet'),
            CustomElevatedButton(label: 'Vegetarian'),
            CustomElevatedButton(label: 'Vegan'),
            CustomElevatedButton(label: 'Low Carb'),
            CustomElevatedButton(label: 'High Protein'),
            CustomElevatedButton(label: 'Wheat-Free'),
            CustomElevatedButton(label: 'Diabetic Diet'),
            CustomElevatedButton(label: 'Pescatarian'),
            CustomElevatedButton(label: 'Athlete'),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 260,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  // // Access the selected diet using the controller
                  // print("Selected Diet: ${controller.selectedDiet.value}");
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFDFDFDF),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
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
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String label;

  CustomElevatedButton({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final DietController controller = Get.find(); // Access the controller
    return SizedBox(
      width: 270,
      child: ElevatedButton(
        onPressed: () {
          // Update the selected diet using the controller
          controller.setSelectedDiet(label);
          print(label);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
