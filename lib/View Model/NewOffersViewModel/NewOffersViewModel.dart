

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constant/assets/assets.dart';

class NewOffersViewModel extends GetxController{
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
  ];

  List<String> Txt1 = [
    "Your Breakfast for that day",
    "Your Lunch for that day",
  ];
  List<String> Txt = [
    "Salad and Vegetables",
    "Chicken Boti ",
  ];

  List<String> img3 = [
    ImageAssets.Spicypasta,
    ImageAssets.nooddles,
    ImageAssets.VegPotato,
  ];
  List<String> img4 = [
    ImageAssets.Potatosnaks,
    ImageAssets.Potatosnaks1,
    ImageAssets.Potatosnaksveg,
  ];

  List<String> Txt2 = [
    "Spicy Pasta",
    "Noodle's with vegetable ",
    "Potato with vegetable",
  ];
  List<String> Txt3 = [
    "Potato Snacks",
    "Potato Snacks",
    "Potato with vegetable",
  ];

}