import 'package:get/get.dart';

class WidgetsViewModel extends GetxController {
  RxBool isLiked = false.obs;
  RxBool isDisliked = false.obs;

  void toggleLike() {
    isLiked.value = !isLiked.value;
    if (isLiked.value) {
      isDisliked.value = false; // Reset dislike if like is pressed
    }
  }

  void toggleDislike() {
    isDisliked.value = !isDisliked.value;
    if (isDisliked.value) {
      isLiked.value = false; // Reset like if dislike is pressed
    }
  }
}
