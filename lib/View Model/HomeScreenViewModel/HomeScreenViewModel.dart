import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constant/assets/assets.dart';

class HomeScreenViewModel extends GetxController {
  Rx<DateTime> now = DateTime.now().obs;

  String get formattedDate => DateFormat('EEEE, MMMM d, y').format(now.value);

  void navigateToPreviousDay() {
    now.value = now.value.subtract(Duration(days: 1));
  }

  void navigateToNextDay() {
    now.value = now.value.add(Duration(days: 1));
  }

  List<String> img = [
    ImageAssets.Salad$Veg,
    ImageAssets.EegVeg,
    ImageAssets.breadEeg,
  ];
  List<String> img2 = [
    ImageAssets.ChickenBoti,
    ImageAssets.beefburgur,
    ImageAssets.chickenkabab,
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

  List<String> Txt = [
    "Salad and Vegetables",
    "Egg and Vegetables",
    "Bread and Egg",
  ];
  List<String> Txt1 = [
    "Chicken Boti ",
    "Beef Burger",
    "Chicken Kabab",
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
