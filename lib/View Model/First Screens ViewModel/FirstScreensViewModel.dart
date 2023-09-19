import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class FirstScreensViewModel extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentIndex = 0.obs;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class ThirdScreenController extends GetxController {
  RxBool pickPlan = false.obs;
  RxBool iAlreadyHave = false.obs;

  void togglePickPlan() {
    pickPlan.value = !pickPlan.value;
    iAlreadyHave.value = false;
  }

  void toggleIAlreadyHave() {
    pickPlan.value = false;
    iAlreadyHave.value = !iAlreadyHave.value;
  }
}

