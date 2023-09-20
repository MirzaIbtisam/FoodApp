import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class maintainbalancesecondscreen extends StatefulWidget {
  const maintainbalancesecondscreen({super.key});

  @override
  State<maintainbalancesecondscreen> createState() => _maintainbalancesecondscreenState();
}

class _maintainbalancesecondscreenState extends State<maintainbalancesecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Text(
              'Hi Anas !',
              style: TextStyle(
                color: Color.fromRGBO(229, 76, 56, 1),
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 15, 0),
            child: Image.asset('assets/bellicon.png'),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Text(
              'Maintain Balance Convenience',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: SizedBox(
              height: 35,
              width: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button's action here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Background color
                    onPrimary: Color.fromRGBO(229, 76, 56, 1), // Text color
                  ),
                  child: Text(
                    'Buy Plan',
                    style: TextStyle(
                      color: Color.fromRGBO(229, 76, 56, 1), // Text color
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 210, 0),
        child: Text(
          'Full Day Premium',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 110,
        width: 330,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Column(
              children: [
                SizedBox(
                  height: 21,
                ),
                SizedBox(
                  height: 35,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button's action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Background color
                        onPrimary:
                        Color.fromRGBO(229, 76, 56, 1), // Text color
                      ),
                      child: Text(
                        '3 Weeks Plan',
                        style: TextStyle(
                          color:
                          Color.fromRGBO(229, 76, 56, 1), // Text color
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 40,
                    color: Color.fromRGBO(229, 76, 56, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Friday ,24 ,2023',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
        child: Text(
          'Your nutrients for that day',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          height: 90,
          width: 340,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Calories',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('1200'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Proteins',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        '120-150g',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Carbs',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('120-150g')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Fats',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('120-150g'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,130,0,),
                    child: Text(
                      'Your nutrients for that day',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/shrimp-pad-thai-white-background.png',
                                  height: 160,
                                  width: 160,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      9, 120, 0, 0),
                                  child: Opacity(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                            30.0), // Radius for the bottom-left corner
                                        bottomRight: Radius.circular(
                                            30.0), // Radius for the bottom-right corner
                                      ),
                                      child: Container(
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.fromLTRB(
                                              8, 4, 0, 0),
                                          child: Text(
                                            'Salad and Vegetables',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                        ),
                                        color: Colors.white,
                                        height: 24,
                                        width: 144,
                                      ),
                                    ),
                                    opacity: 0.5,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20,
                                    20,
                                    0,
                                    0,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/heart.svg',
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Nutrient-Rich brakfast De\nlight Scrambled Eggs wh\nole grain bread light Scra\nmbled Eggs whole',
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0, 0, 50, 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 110,
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(30),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Add your button's action here
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color.fromRGBO(229, 76,
                                              56, 1), // Background color
                                          onPrimary: Color.fromRGBO(
                                              229, 76, 56, 1), // Text color
                                        ),
                                        child: Text(
                                          'Replace',
                                          style: TextStyle(
                                            color:
                                            Colors.white, // Text color
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),


    ],),);
  }
}
