import 'package:get/get.dart';

class YourGenderViewModel extends GetxController {
  var selectedGender = RxString('');

  void selectGender(String gender) {
    selectedGender.value = gender;
  }

  void deselectGender() {
    selectedGender.value = '';
  }
}
