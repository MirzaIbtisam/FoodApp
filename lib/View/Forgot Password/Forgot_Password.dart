import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/constant/assets/assets.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.checkColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorValues.whiteColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(
                      ImageAssets.BackArrow,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(ImageAssets.forgetpassword),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: ColorValues.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(150),
                        topRight: Radius.circular(150)),
                    boxShadow: [
                      BoxShadow(
                        color: ColorValues.ElevatedColor,
                        blurRadius: 7,
                        offset: Offset(.5, 2.5),
                      )
                    ]),
                height: 430,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Text(
                        "Forgot  Password",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: ColorValues.NavyblueColor),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Please enter your Email Address to\nReceive Verification Code",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: ColorValues.NavyblueColor),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorValues.whiteColor,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: ColorValues.lightGrayColor,
                                  blurRadius: 2,
                                  offset: Offset(0, 4))
                            ]),
                        height: 40,
                        width: Get.width,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: SvgPicture.asset(
                                ImageAssets.mail1,
                                fit: BoxFit.scaleDown,
                              ),
                              contentPadding: EdgeInsets.only(top: 4),
                              hintText: "johnsondoe@nomail.com.",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: ColorValues.NavyblueColor)),
                        ),
                      ),
                      SizedBox(height: 40),
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
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
