
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MaintainBalance extends StatefulWidget {
  const MaintainBalance({Key? key}) : super(key: key);

  @override
  State<MaintainBalance> createState() => _MaintainBalanceState();
}

class _MaintainBalanceState extends State<MaintainBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      height: 8,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: SizedBox(
                        width: 150,
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
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text(
                          'Your nutrients for that day',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                    'assets/shrimp-pad-thai-white-background.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
