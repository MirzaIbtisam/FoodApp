import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/constant/Widgets/Widget3.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View Model/MainScreenViewModel/MainScreenViewModel.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainScreenViewModel controller = Get.put(MainScreenViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      blurRadius: 2, // Blur radius
                      offset: Offset(0, 2.1), // Offset of the shadow
                    ),
                  ],
                ),
                height: Get.height * 0.3800,
                width: Get.width,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32)),
                          image: DecorationImage(
                              image: AssetImage(ImageAssets.ChickenBoti),
                              fit: BoxFit.cover)),
                      height: Get.height * 0.3,
                      width: Get.width,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(Icons.arrow_back_ios_new_outlined,
                                    color: ColorValues.checkColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('OPTIMUM DIGESTION AND',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color:
                                          ColorValues.darkSubtitleTextColor)),
                              Text(
                                'HEALING',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: ColorValues.ElevatedColor),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            color: ColorValues.ElevatedColor,
                            child: Center(
                              child: Text(
                                '20% OFF',
                                style: TextStyle(
                                    color: ColorValues.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Recommended Plan',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorValues.darkSubtitleTextColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      blurRadius: 2, // Blur radius
                      offset: Offset(1.1, 2.1), // Offset of the shadow
                    ),
                  ],
                ),
                height: 90,
                width: 330,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Calories',
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorValues.darkSubtitleTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '1200',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorValues.darkBgColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Proteins',
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorValues.darkSubtitleTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '60-90g',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorValues.darkBgColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Carbs',
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorValues.darkSubtitleTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '120-150g',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorValues.darkBgColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Fat',
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorValues.darkSubtitleTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '120-150g',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorValues.darkBgColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Your package type',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorValues.darkSubtitleTextColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: controller.image.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        controller.showDialogBox(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 8),
                          child: PackageType(controller.image[index],
                              controller.txt[index], controller.txt1[index])),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Calories',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: Get.height * 0.1400,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      blurRadius: 2, // Blur radius
                      offset: Offset(1.1, 2.1), // Offset of the shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: ColorValues.ElevatedColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(32),
                                        bottomLeft: Radius.circular(32)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 5,
                                        offset: Offset(0, 2.1),
                                      ),
                                    ]),
                                height: 30,
                                width: 45,
                                child: Center(
                                    child: Text(
                                  "Suggested",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: ColorValues.whiteColor),
                                )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: ColorValues.whiteColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(32),
                                        bottomRight: Radius.circular(32)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 5,
                                        offset: Offset(0, 2.1),
                                      ),
                                    ]),
                                height: 30,
                                width: 45,
                                child: Center(
                                    child: Text(
                                  "1100-1300",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: ColorValues.darkSubtitleTextColor),
                                )),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorValues.whiteColor,
                                borderRadius: BorderRadius.circular(32),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(0, 2.1),
                                  ),
                                ]),
                            height: 30,
                            width: 90,
                            child: Center(
                                child: Text(
                              "1350-1600",
                              style: TextStyle(
                                  fontSize: 8,
                                  color: ColorValues.darkSubtitleTextColor),
                            )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorValues.whiteColor,
                                borderRadius: BorderRadius.circular(32),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(0, 2.1),
                                  ),
                                ]),
                            height: 30,
                            width: 90,
                            child: Center(
                                child: Text(
                              "1650-1800",
                              style: TextStyle(
                                  fontSize: 8,
                                  color: ColorValues.darkSubtitleTextColor),
                            )),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: ColorValues.whiteColor,
                                borderRadius: BorderRadius.circular(32),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(0, 2.1),
                                  ),
                                ]),
                            height: 30,
                            width: 90,
                            child: Center(
                                child: Text(
                              "1350-1600",
                              style: TextStyle(
                                  fontSize: 8,
                                  color: ColorValues.darkSubtitleTextColor),
                            )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorValues.whiteColor,
                                borderRadius: BorderRadius.circular(32),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(0, 2.1),
                                  ),
                                ]),
                            height: 30,
                            width: 90,
                            child: Center(
                                child: Text(
                              "1350-1600",
                              style: TextStyle(
                                  fontSize: 8,
                                  color: ColorValues.darkSubtitleTextColor),
                            )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorValues.whiteColor,
                                borderRadius: BorderRadius.circular(32),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(0, 2.1),
                                  ),
                                ]),
                            height: 30,
                            width: 90,
                            child: Center(
                                child: Text(
                              "1650-1800",
                              style: TextStyle(
                                  fontSize: 8,
                                  color: ColorValues.darkSubtitleTextColor),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Still looking for a plan?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: ColorValues.darkSubtitleTextColor),
                  ),
                  SizedBox(
                    height: 30,
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button's action here
                      },
                      style: ElevatedButton.styleFrom(
                          primary: ColorValues.ElevatedColor,
                          // Background color
                          onPrimary: ColorValues.whiteColor,
                          // Text color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Text(
                        'see other plans',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9, // Text color
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 330,
                height: 150,
                child: Container(
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Pakage Price',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: ColorValues.darkSubtitleTextColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              'AED 3200.00',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: ColorValues.darkSubtitleTextColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Divider(
                          thickness: 0.5,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                            ),
                            child: Text(
                              'Subtotal',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: ColorValues.ElevatedColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Text(
                              '(Incl .VAT ,)',
                              style: TextStyle(
                                  fontSize: 8, color: ColorValues.checkColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              'AED 3300.00',
                              style: TextStyle(
                                  fontSize: 12, color: ColorValues.blackColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          height: 35,
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: ColorValues.ElevatedColor,
                              // Background color
                              onPrimary: ColorValues.whiteColor, // Text color
                            ),
                            child: Text(
                              'checkout',
                              style: TextStyle(
                                color: Colors.white, // Text color
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
