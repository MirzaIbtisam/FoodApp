import 'package:flutter/material.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
              child: Container(
                height: 300,
                width: 340,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/vegetable-salad-plate.png',
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                              child: Icon(Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: Text('OPTIMUM DIGESTION AND',
                                  style: TextStyle(fontSize: 10)),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(105, 10, 0, 0),
                              child: Container(
                                height: 30,
                                width: 80,
                                color: Color.fromRGBO(229, 76, 56, 1),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 7, 0, 0),
                                  child: Text(
                                    '20% OFF',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 240, 0),
                          child: Text(
                            'HEALING',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(229, 76, 56, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 170, 0),
              child: Text(
                'Recommended Plan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
              child: Text(
                'Your pakage type',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 260,
              child: Expanded(
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/shrimp-pad-thai-white-background.png',
                                  height: 170,
                                  width: 170,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child: Container(
                                      height: 35,
                                      width: 140,
                                      color: Color.fromRGBO(229, 76, 56, 1),
                                      child: Row(
                                        children: [
                                          Text(
                                            '  Full Day',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'Premium',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18),
                                          )
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Text(
                                    'Includes breakfast , Lunch \n and Dinner with slides',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 260, 0),
              child: Text(
                'Calories',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),








            Padding(
              padding: const EdgeInsets.fromLTRB(10,0,10,0),
              child: Container(
                height: 120,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,18,5,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                                child: Card(
                                  elevation: 6,

                                  child: Text('1100-1300'),),
                            height: 40,
                              width: 100,


                            ),
                            Container(
                              child: Card(child: Text('1100-1300'),),
                              height: 40,
                              width: 100,


                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: Card(child: Text('1100-1300'),),
                              height: 40,
                              width: 100,


                            ),
                            Container(
                              child: Card(child: Text('1100-1300'),),
                              height: 40,
                              width: 100,


                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: Card(child: Text('1100-1300'),),
                              height: 40,
                              width: 100,


                            ),
                            Container(
                              child: Card(child: Text('1100-1300'),),
                              height: 40,
                              width: 100,

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
