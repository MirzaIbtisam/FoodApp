import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_app_getx/View/YourGoal/yourgoal.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 40),
            Align(
              alignment: Alignment.topLeft,
              // child: showCountryPicker(
              //   context: context,
              //   showPhoneCode: true, // optional. Shows phone code before the country name.
              //   onSelect: (Country country) {
              //     print('Select country: ${country.displayName}');
              //   },
              // ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: Image.asset(
                'assets/welcome.png',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Fresh Feel!',
                  style: TextStyle(
                      fontSize: 22, color: Color.fromRGBO(229, 76, 56, 1)),
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                'Make menu changes up to 48 hours prior to delivery & cancel your meal for redeemable credits! ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 45,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(YourGoal());
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffE54C38),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  elevation: 0.0,
                ),
                child: Text(
                  'Help me pick a plan',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Gilory",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  // Add your button press logic here
                  print('Button pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(223, 223, 223, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  elevation: 0.0,
                ),
                child: Text(
                  'I already know what I want',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Gilory",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an Account?',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Gilory",
                  ),
                ),
                Text(
                  ' Log in',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Gilory",
                    color: Color(0xffE54C38),
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
