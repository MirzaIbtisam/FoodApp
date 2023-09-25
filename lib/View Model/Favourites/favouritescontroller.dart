import 'package:flutter/material.dart';
import 'package:food_app_getx/View/NoFavouritesYet/nofavouritersyet.dart';
import 'package:get/get.dart';

class FavouriteScreenController extends GetxController {
  RxList<Post> posts = <Post>[].obs;
}


class Post {
  final List<String> imagePaths;
  final List<String> imagetext;
  final List<String> heading;
  final List<String> explanation;
  final List<IconData> likeicon;

  Post({
    required this.imagePaths,
    required this.imagetext,
    required this.heading,
    required this.explanation,
    required this.likeicon,
  });
}
