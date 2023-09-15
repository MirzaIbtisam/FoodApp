import 'package:get/get.dart';

class SignUpViewModel extends GetxController {
  RxString FirstName = "".obs;
  RxString LastName = "".obs;
  RxString email = "".obs;
  RxString password = "".obs;

  void FirstNamechanged(String value) {
    FirstName.value = value;
  }

  void LastNamechanged(String value) {
    LastName.value = value;
  }

  void emailchanged(String value) {
    email.value = value;
  }

  void passwordchanged(String value) {
    email.value = value;
  }
}
