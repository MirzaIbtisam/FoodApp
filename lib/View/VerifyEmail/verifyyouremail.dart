import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_getx/View/ChangePassword/changepassword.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../EditProfile/editprofile.dart';

class VerifyYourEmail extends StatefulWidget {
  const VerifyYourEmail({super.key});

  @override
  State<VerifyYourEmail> createState() => _VerifyYourEmailState();
}

class _VerifyYourEmailState extends State<VerifyYourEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'assets/Enter OTP-amico.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: Get.height * 0.59,
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
                      'Verify your Email',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Please enter the 4 Digit Code sent to \n johnsondoe@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        pinTheme: PinTheme(
                          activeColor: Colors.black,
                          selectedColor: Colors.black,
                          inactiveColor: Colors.black,
                          fieldHeight: 40,
                          fieldWidth: 40,
                          activeFillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't Receive a Code! "),
                        Text(
                          'Resend',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Send',
                      onPressed: () {
                        Get.to(ChangePassword());
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
