

import 'package:get/get.dart';

class GoalTwoViewModel extends GetxController {

  RxInt selectedIndex = 0.obs;

  List<String> Txt = [
    "Balanced Diet",
    "Vegetarian",
    "Vegan",
    "Low Carb",
    "High Protein",
    "Wheat-Free",
    "Diabetic Diet",
    "Pescatarian",
    "Athlete",
  ];

  void selectIndex(int index) {
    selectedIndex.value = index;
  }

}