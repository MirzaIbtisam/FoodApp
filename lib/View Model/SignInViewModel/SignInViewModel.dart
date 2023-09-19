import 'package:get/get.dart';

class SignInController extends GetxController {
  RxString email = "".obs;
  RxString password = "".obs;

  void emailchanged(String value) {
    email.value = value;
  }

  void passwordchanged(String value) {
    password.value = value;
  }
}
