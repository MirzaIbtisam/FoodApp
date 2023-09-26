import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {

}






class UserProfile {
  RxList<String> profileimage = <String>[].obs;
  RxList<dynamic> profileicon = [].obs;
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
