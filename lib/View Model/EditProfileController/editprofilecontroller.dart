import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  RxList<UserProfile> users = <UserProfile>[].obs;

  void firstNameChanged(String value) {
    if (users.isNotEmpty) {
      users[0].FullName.value = value; // Access the first UserProfile object
    }
  }


  void LastNamechanged(String value) {
    if (users.isNotEmpty) {
      users[0].FullName.value = value; // Access the first UserProfile object
    }  }

  void emailchanged(String value) {
    users[0].Password.value = value;
  }

  void passwordchanged(String value) {
    users[0].ConfirmedPassword.value = value;
  }
}







class UserProfile {
  RxString profileimage = ''.obs;
  RxString profileicon = ''.obs;
  RxString FullName = "".obs;
  RxString Email = "".obs;
  RxString Password = "".obs;
  RxString ConfirmedPassword = "".obs;


  UserProfile({
    required this.profileimage,
    required this.profileicon,
    required this.FullName,
    required this.Email,
    required this.Password,
    required this.ConfirmedPassword,

  });
}
