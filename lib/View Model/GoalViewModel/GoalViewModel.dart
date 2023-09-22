import 'package:get/get.dart';

class GoalViewModel extends GetxController {
  final selectedGoal = "".obs; // Use Observable for state management

  void selectGoal(String goal) {
    selectedGoal.value = goal;
  }
}