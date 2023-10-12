import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/View/Forgot%20Password/Forgot_Password.dart';
import 'package:food_app_getx/View/Main%20Screen/Main_Screen.dart';
import 'package:food_app_getx/View/Sign%20Up/Sign_Up.dart';
import 'package:food_app_getx/constant/color/color.dart';
import 'package:get/get.dart';

import '../../View Model/SignInViewModel/SignInViewModel.dart';
import '../../constant/assets/assets.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SvgPicture.asset(
                ImageAssets.Plant,
                height: Get.height * 0.4,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 22,
                  color: ColorValues.NavyblueColor,
                  fontFamily: "Gilory",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              CustomTextField(ImageAssets.mailBox,"johnsondoe@nomail.com."),
              SizedBox(height: 20),
              CustomTextField(ImageAssets.Lock,"••••••••••••••••••••"),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => ForgotPassword());
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Gilory",
                      color: ColorValues.TxtColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: Get.width * .4500,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => MainScreen());
                    // Add your button press logic here
                    print('Button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorValues.ElevatedColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    elevation: 0.0,
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Gilory",
                      color: ColorValues.whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'OR',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Gilory",
                  color: ColorValues.NavyblueColor,
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageAssets.Google),
                  SizedBox(width: 10),
                  SvgPicture.asset(ImageAssets.Apple),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an Account?',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Gilory",
                      color: ColorValues.lightgryColor,
                    ),
                  ),
                  InkWell(onTap: (){Get.to(() => SignUp());},
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Gilory",
                        color: ColorValues.ElevatedColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomTextField(
      String icon,
      String hinttext,
      ) {
    return Container(
      decoration: BoxDecoration(
        color: ColorValues.whiteColor,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      height: 50,
      width: Get.width * 1.1,
      child: TextFormField(
        onChanged: (value) {
          if (hinttext == "johnsondoe@nomail.com.") {
            controller.email.value = value;
          } else {
            controller.password.value = value;
          }
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hinttext,
          hintStyle: TextStyle(
            fontSize: 12,
            fontFamily: "Gilory",
            color: ColorValues.checkColor,
          ),
          prefixIcon: SvgPicture.asset(
            icon,
            fit: BoxFit.scaleDown,
          ),
          suffixIcon: hinttext == "johnsondoe@nomail.com."
              ? SizedBox()
              : Icon(
            CupertinoIcons.eye_fill,
            color: ColorValues.GreenColor,
          ),
        ),
      ),
    );
  }
}
