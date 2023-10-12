import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/constant/Widgets/bottom_Widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constant/assets/assets.dart';
import '../../constant/color/color.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<String> img = [
    ImageAssets.pausebutton,
    ImageAssets.transcation,
    ImageAssets.shared,
    ImageAssets.Lock,
    ImageAssets.order,
    ImageAssets.Person,
  ];
  List<String> txt = [
    "Pause Subscription",
    "Transaction Detail",
    "Share App ",
    "Change Password",
    "Order Details",
    "Log Out",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(ImageAssets.BackIcon)),
                SizedBox(width: 20),
                Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorValues.darkSubtitleTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: img.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return card(img[index], txt[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
