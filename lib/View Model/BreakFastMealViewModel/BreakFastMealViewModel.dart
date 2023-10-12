

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../constant/assets/assets.dart';

class BreakFastMealViewModel extends GetxController{
  final RxInt currentIndex = 1.obs;

  final List<String> files = [
    ImageAssets.ChickenBoti,
    ImageAssets.chickenkabab,
    ImageAssets.beefburgur,
    ImageAssets.Potatosnaks,
  ];
  final List<String> img = [
    ImageAssets.Salad$Veg,
    ImageAssets.EegVeg,
    ImageAssets.breadEeg,
    ImageAssets.ChickenBoti,
    ImageAssets.beefburgur,
    ImageAssets.chickenkabab,
  ];
  final List<String> Txt = [
    "Salad and Vegetables",
    "Egg and Vegetables",
    "Bread and Egg",
    "Chicken Boti ",
    "Beef Burger",
    "Chicken Kabab",
  ];

}