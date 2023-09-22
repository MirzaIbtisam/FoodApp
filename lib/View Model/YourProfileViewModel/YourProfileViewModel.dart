import 'package:flutter/material.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class YourProfileViewModel extends GetxController {
  final RxString selectedContainer = "Height".obs;
  late final BuildContext context;

  YourProfileViewModel({required BuildContext context}) {
    this.context = context;
  }

  // Function to handle container selection
  void selectContainer(String containerName) {
    selectedContainer.value = containerName;
  }

  void showHeightDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Height",
            style: TextStyle(
                fontSize: 14, color: ColorValues.darkSubtitleTextColor),
          ),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorValues.ElevatedColor,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2,
                              offset: Offset(0, 2.1))
                        ]),
                    height: 35,
                    width: Get.width * 0.3,
                    child: Center(
                      child: Text(
                        "Txt",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: ColorValues.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorValues.ElevatedColor,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2,
                              offset: Offset(0, 2.1))
                        ]),
                    height: 35,
                    width: Get.width * 0.3,
                    child: Center(
                      child: Text(
                        "Txt",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: ColorValues.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  void showWeightDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Weight"),
          content: Text("This is the Weight dialog content."),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  void showAgeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Age"),
          content: Text("This is the Age dialog content."),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
