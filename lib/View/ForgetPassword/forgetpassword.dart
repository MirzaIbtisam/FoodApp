import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/View/VerifyEmail/verifyyouremail.dart';
import 'package:get/get.dart';
import '../EditProfile/editprofile.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key});
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(223, 223, 223, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SvgPicture.asset(
                  'assets/backarow.svg',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(
                'assets/Forgot password-amico (1).png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: Get.height * 0.54,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                    topRight: Radius.circular(150)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(229, 76, 56, 1), // Shadow color
                    blurRadius: 5, // Blur radius
                    offset:
                        Offset(0, 2), // Offset of the shadow (vertical offset)
                  ),
                ],
                color: Colors.white, // Background color of the container
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Forget Password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Please enter your Email Address to\nReceive Verification Code',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey, // Shadow color
                            // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 2), // Offset in x and y direction
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'johnsondoe@gmail.com',
                          prefixIcon: Image.asset('assets/emailicon.png'),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                      text: 'Send',
                      onPressed: () {
                        Get.to(VerifyYourEmail());
                      },
                      backgroundColor: Color.fromRGBO(229, 76, 56, 1),
                      textColor: Colors
                          .white, // Set black text color for the second button
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
