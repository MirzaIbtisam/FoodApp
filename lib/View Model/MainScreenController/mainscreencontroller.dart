import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MainScreeController extends GetxController {
  RxList<Post> posts = <Post>[].obs;
}














class Post {
  RxList<String> mainimage = <String>[].obs;
  RxString mainimagetext = ''.obs;
  RxString mainimagetext2 = ''.obs;
  RxString percentoff = ''.obs;
  RxString caloriesgram = ''.obs;
  RxString proteingram = ''.obs;
  RxString carbsgram = ''.obs;
  RxString fatsgram = ''.obs;
  RxList<String> pakagetypeimage = <String>[].obs;
  RxString fullday = ''.obs;
  RxString premium = ''.obs;
  RxString pakagetypedescription = ''.obs;
  RxString suggessted = ''.obs;
  RxString suggessted2 = ''.obs;
  RxString suggessted3 = ''.obs;
  RxString suggessted4 = ''.obs;
  RxString suggessted5 = ''.obs;
  RxString suggessted6 = ''.obs;
  RxString pakageprice = ''.obs;
  RxString inclVAT = ''.obs;
  RxString subtotal = ''.obs;

  Post({
    required this.mainimage,
    required this.mainimagetext,
    required this.mainimagetext2,
    required this.percentoff,
    required this.caloriesgram,
    required this.proteingram,
    required this.carbsgram,
    required this.fatsgram,
    required this.pakagetypeimage,
    required this.fullday,
    required this.premium,
    required this.pakagetypedescription,
    required this.suggessted,
    required this.suggessted2,
    required this.suggessted3,
    required this.suggessted4,
    required this.suggessted5,
    required this.suggessted6,
    required this.pakageprice,
    required this.inclVAT,
    required this.subtotal,
  });
}
