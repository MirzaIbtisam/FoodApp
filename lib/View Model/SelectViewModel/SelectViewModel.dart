import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../constant/assets/assets.dart';

class SelectViewModel extends GetxController {
  Rx<DateTime> now = DateTime.now().obs;

  String get formattedDate => DateFormat('EEEE, MMMM d, y').format(now.value);

  void navigateToPreviousDay() {
    now.value = now.value.subtract(Duration(days: 1));
  }

  void navigateToNextDay() {
    now.value = now.value.add(Duration(days: 1));
  }

  List<String> img1 = [
    ImageAssets.Salad$Veg,
    ImageAssets.ChickenBoti,
    ImageAssets.Spicypasta,
    ImageAssets.Potatosnaks,
  ];
  List<String> Txt2 = [
    "Your Breakfast for that day",
    "Your Lunch for that day",
    "Your Dinner for that day",
    "Your Snack for that day",
  ];
  List<String> Txt1 = [
    "Salad and Vegetables",
    "Chicken Boti ",
    "Spicy Pasta",
    "Potato Snacks",
  ];

}
