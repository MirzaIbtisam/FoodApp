import 'package:get/get.dart';
class YourGoalExerciseController extends GetxController {
  var selectedGoal = "".obs;
  void updateSelectedGoal(String goal) {
    selectedGoal.value = goal;
  }
}
