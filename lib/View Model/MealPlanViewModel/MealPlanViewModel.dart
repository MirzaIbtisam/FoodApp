import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../constant/assets/assets.dart';

class MealPlanController extends GetxController {
  final List<String> img = [
    ImageAssets.Diet,
    ImageAssets.kabab,
    ImageAssets.Diet,
    ImageAssets.kabab,
    ImageAssets.Diet,
    ImageAssets.kabab,
    ImageAssets.Diet,
    ImageAssets.kabab,
  ];
  final List<String> Txt1 = [
    "Most",
    "Maintain",
    "Optimal for",
    "Enhance",
    "Plant-based",
    "Optimum Digestion and ",
    "For Pregnancy And",
    "Control Blood",
  ];
  final List<String> Txt2 = [
    "POPULAR",
    "BALANCE",
    "SHREDDING FAT",
    "PERFORMANCE",
    "GOODNESS",
    "HEALING",
    "POSTPARTUM",
    "SUGAR LEVELS",
  ];
  final List<String> Txt3 = [
    "Weight Loss",
    "Convenience",
    "Low Carb",
    "Athlete",
    "Vegan",
    "Gut Healthy",
    "Made for Mums",
    "Diabetic",
  ];
  final List<String> Txt4 = [
    "Reach your personal weight goals whilst\nsatisfying your taste buds",
    "Maintain a health lifestyle with wholesome\nmacro-counted meals.",
    "Reach your goals & curb your craving with\nlow carb, high protein meals",
    "Boost your performance & reach your\nfitness goals with high-protein meals.",
    "Maintain a healthy diet with nutrient-rich\nand balanced plant-based meals ",
    "Improve your digestion and gut health\nwith meals customized to you allergies\nand intolerance ",
    "Maintain a healthy nutrient-rich diet that\naccommodates to your need during\npregnancy and after delivery",
    "Keep your blood sugar in check whilst\nmaintain your energy levels with portion-\ncontrolled meals.",
  ];

  @override
  void onInit() {
    super.onInit();
    // Initialize your data or perform any setup here
  }
}
