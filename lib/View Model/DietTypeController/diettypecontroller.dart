import 'package:get/get.dart';

class DietController extends GetxController {
  var selectedDiet = "".obs;

  void setSelectedDiet(String diet) {
    selectedDiet.value = diet;
  }
}
