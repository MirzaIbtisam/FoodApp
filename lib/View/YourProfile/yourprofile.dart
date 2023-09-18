import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../YourGoalExercise/yourgoalexercise.dart';

class YourProfile extends StatefulWidget {
  const YourProfile({super.key});

  @override
  State<YourProfile> createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           SizedBox(height: 70),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     SvgPicture.asset("assets/back_arrow.svg"),
                     SizedBox(width: 30),
                     Text(
                       "Fresh Feel",
                       style: TextStyle(
                           fontSize: 21,
                           fontFamily: "Gilory",
                           fontWeight: FontWeight.w500,
                           color: Color(0xffE54C38)),
                     ),
                   ],
                 ),
                 Container(
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(100),
                       boxShadow: [
                         BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                             blurRadius: 2,
                             offset: Offset(0, 5))
                       ]),
                   height: 30,
                   width: 30,
                   child: SvgPicture.asset(
                     "assets/whatsapp.svg",
                     fit: BoxFit.scaleDown,
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(
             height: 25,
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
             child: SvgPicture.asset(
               "assets/progressbar3.svg",
               fit: BoxFit.scaleDown,
             ),
           ),
           SizedBox(
             height: 20,
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(0, 0, 165, 0),
             child: Text(
               "Your Profile",
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
             ),
           ),
           SizedBox(
             height: 20,
           ),

           SizedBox(
             height: 40,
             width: 270,
             child: ElevatedButton(
               onPressed: () {
                 // Add your onPressed function here
               },
               style: ElevatedButton.styleFrom(
                 primary: Colors.white, // Background color
                 onPrimary: Colors.black, // Text color
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                 ),
               ),
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(0,0,190,0),
                 child: Text('Height'),
               ),
             ),
           ),
           SizedBox(height: 20,),
           SizedBox(
             height: 40,
             width: 272,
             child: ElevatedButton(
               onPressed: () {
                 // Add your onPressed function here
               },
               style: ElevatedButton.styleFrom(
                 primary: Colors.white, // Background color
                 onPrimary: Colors.black, // Text color
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                 ),
               ),
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(0,0,190,0),
                 child: Text('Weight'),
               ),
             ),
           ),
           SizedBox(height: 20,),
           SizedBox(
             height: 40,
             width: 270,
             child: ElevatedButton(
               onPressed: () {
                 // Add your onPressed function here
               },
               style: ElevatedButton.styleFrom(
                 primary: Colors.white, // Background color
                 onPrimary: Colors.black, // Text color
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                 ),
               ),
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(0,0,202,0),
                 child: Text('Age'),
               ),
             ),
           ),
           SizedBox(
             height: 10,
           ),
           SizedBox(
             width: 260,
             height: 45,
             child: ElevatedButton(
               onPressed: () {
                 Get.to(yourgoalexercise());
                 // Navigator.push(
                 //   context,
                 //   MaterialPageRoute(builder: (context) => YourGender()),
                 // );
               },
               style: ElevatedButton.styleFrom(
                 primary: Color(0xFFDFDFDF), // Background color
                 onPrimary: Colors.black, // Text color
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(
                       20.0), // Adjust the border radius as needed
                 ),
               ),
               child: Text("Continue"),
             ),
           ),
           SizedBox(
             height: 20,
           ),









         ],
       ),






    );
  }
}
