import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constant/Widgets/bottom_Widget.dart';
import '../../constant/assets/assets.dart';
import '../../constant/color/color.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
                decoration: BoxDecoration(
                    color: ColorValues.whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorValues.dotColor,
                        blurRadius: 5,
                        offset: Offset(0, 1),
                      )
                    ]),
                height: 150,
                width: Get.width,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child:
                                      SvgPicture.asset(ImageAssets.BackIcon)),
                              SizedBox(width: 20),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorValues.darkSubtitleTextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Center(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorValues.whiteColor,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: ColorValues.ElevatedColor, width: 1.5)),
                    height: 90,
                    width: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(ImageAssets.profilepic),
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(60, 70),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorValues.ElevatedColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 25,
                      width: 25,
                      child: SvgPicture.asset(
                        ImageAssets.Edit,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ]),
          SizedBox(height: 50),
          Textfield(ImageAssets.Person, "Full name"),
          SizedBox(height: 10),
          Textfield(ImageAssets.mail, "Email"),
          SizedBox(height: 10),
          Textfield(ImageAssets.Lock, "Password"),
          SizedBox(height: 10),
          Textfield(ImageAssets.Lock, "Confirm Password"),
          SizedBox(height: 50),
          SizedBox(
            width: 150,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: ColorValues.ElevatedColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorValues.whiteColor),
                )),
          ),
          SizedBox(
            width: 150,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: ColorValues.whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorValues.ElevatedColor),
                )),
          )
        ],
      ),
    );
  }
}