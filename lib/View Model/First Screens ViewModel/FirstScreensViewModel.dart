import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class FirstScreensViewModel extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentIndex.value = pageController.page!.round();
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
