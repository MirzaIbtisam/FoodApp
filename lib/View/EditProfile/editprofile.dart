import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_getx/View/ForgetPassword/forgetpassword.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View Model/EditProfileController/editprofilecontroller.dart';

class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  final EditProfileController controller = Get.put(EditProfileController());
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.18,
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
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 110,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.arrow_back_outlined),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 96),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromRGBO(229, 76, 56, 1), // Border color
                          width: 1.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 40.0,
                        child: ClipRRect(
                          child: Image.asset('assets/user photo.png'),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60, 165, 0, 0),
                    child: SvgPicture.asset(
                      'assets/pencil.svg',
                      height: 27,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  CustomTextField(
                      hintText: "Full Name",
                      prefixIcon: Icons.person_rounded,
                      prefixIconColor: Color.fromRGBO(229, 76, 56, 1)),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      hintText: "Email",
                      prefixIcon: Icons.email,
                      prefixIconColor: Color.fromRGBO(229, 76, 56, 1)),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "Password",
                    prefixIcon: Icons.lock,
                    prefixIconColor: Color.fromRGBO(229, 76, 56, 1),
                    obscureText: true, // Set to true for password fields
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "Confirmed Password",
                    prefixIcon: Icons.lock,
                    prefixIconColor: Color.fromRGBO(229, 76, 56, 1),
                    obscureText:
                        true, // Set to true for confirmed password fields
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  CustomButton(
                    text: 'Save',
                    onPressed: () {
                      Get.to(ForgetPassword());
                    },
                  ),
                  SizedBox(height: 16), // Add some spacing between buttons
                  CustomButton(
                    text: 'Cancel',
                    onPressed: () {
                      // Add your button's action here
                    },
                    backgroundColor: Colors
                        .white, // Set a white background for the second button
                    textColor: Colors
                        .black, // Set black text color for the second button
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custome Widgets
class CustomTextField extends StatelessWidget {

  final String hintText;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final bool obscureText; // Add this property

   CustomTextField({
    Key? key,

    required this.hintText,
    required this.prefixIcon,
    required this.prefixIconColor,
    this.obscureText = false, // Set a default value
  }) : super(key: key);
  // final EditProfileController controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {


    return TextField(
      obscureText: obscureText, // Use the obscureText property here
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(
          prefixIcon,
          color: prefixIconColor,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final double fontSize;
  final BorderRadiusGeometry borderRadius;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color.fromRGBO(229, 76, 56, 1),
    this.textColor = Colors.white,
    this.width = 130,
    this.height = 30,
    this.fontSize = 16,
    this.borderRadius = const BorderRadius.all(Radius.circular(30.0)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          onPrimary: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
