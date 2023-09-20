import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 70),
            Row(
              children: [
                Icon(Icons.arrow_back_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Favourites',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(bottom: 12), child: Favourites());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Favourites() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            blurRadius: 2, // Blur radius
            offset: Offset(1.1, 2.1), // Offset of the shadow
          ),
        ],
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      height: Get.height * 0.2000,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage("assets/foods.png"),
                  fit: BoxFit.cover,
                ),
              ),
              height: Get.height * 0.1800,
              width: Get.width * 0.38,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Center(
                    child: Text(
                      'Salad and Vegetables',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                  ),
                  height: 25,
                  width: Get.width,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Most Popular',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 50),
                    SvgPicture.asset(
                      'assets/heart.svg',
                      height: 12,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Nutrient-Rich Breakfast De\nlight Scrambled Eggs and\n Whole-grain Bread\nNutrient Rich Breakfast De\nlight:Scr',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button's action here
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color.fromRGBO(229, 76, 56, 1), // Background color
                      onPrimary: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
