import 'package:get/get.dart';

class YourGenderController extends GetxController {
  final selectedGender = "".obs;

  void selectGender(String gender) {
    selectedGender.value = gender;
  }
}
