import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/View/Sign%20Up/Sign_Up.dart';
import 'package:food_app_getx/View/Welcome/Welcome.dart';
import 'package:get/get.dart';

import '../../View Model/SignInViewModel/SignInViewModel.dart';

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
                "assets/Plant.svg",
                height: Get.height * 0.4,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff233245),
                  fontFamily: "Gilory",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              CustomTextField("assets/mailBox.svg", "johnsondoe@nomail.com."),
              SizedBox(height: 20),
              CustomTextField("assets/Lock.svg", "••••••••••••••••••••"),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Gilory",
                      color: Color(0xff515151),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: Get.width * .4500,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(Welcome());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffE54C38),
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
                      color: Colors.white,
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
                  color: Color(0xff233245),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Google.svg"),
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/Apple.svg"),
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
                      color: Color(0xffBBBBBB),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => SignUp());
                    },
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Gilory",
                        color: Color(0xffE54C38),
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
        color: Colors.white,
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
            color: Color(0xffDFDFDF),
          ),
          prefixIcon: SvgPicture.asset(
            icon,
            fit: BoxFit.scaleDown,
          ),
          suffixIcon: hinttext == "johnsondoe@nomail.com."
              ? SizedBox()
              :Icon(
                  CupertinoIcons.eye_fill,
                  color: Color(0xff2f7825),
                ),
        ),
      ),
    );
  }
}
