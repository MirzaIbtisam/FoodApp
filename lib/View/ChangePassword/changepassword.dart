import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../EditProfile/editprofile.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SvgPicture.asset('assets/backarow.svg'),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Image.asset('assets/Forgot password-amico (1).png'),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.54,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                  topRight: Radius.circular(150),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(229, 76, 56, 1),
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'Change Password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(height: 5),
                    SizedBox(height: 20),
                    CustomTextFieldContainer(
                      controller: newPasswordController,
                      hintText: 'New Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomTextFieldContainer(
                      controller: confirmPasswordController,
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 50),
                    CustomButton(
                      text: 'Done',
                      onPressed: () {
                        String newPassword = newPasswordController.text;
                        String confirmPassword = confirmPasswordController.text;

                        // Validate and process the passwords here
                      },
                      backgroundColor: Color.fromRGBO(229, 76, 56, 1),
                      textColor: Colors.white,
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

class CustomTextFieldContainer extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget prefixIcon;

  CustomTextFieldContainer({
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
