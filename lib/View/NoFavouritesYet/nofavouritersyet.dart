import 'package:flutter/material.dart';

class NoFavouritesYet extends StatefulWidget {
  const NoFavouritesYet({super.key});

  @override
  State<NoFavouritesYet> createState() => _NoFavouritesYetState();
}

class _NoFavouritesYetState extends State<NoFavouritesYet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(height: 70),
          Row(
            children: [
              Icon(Icons.arrow_back_outlined),
              SizedBox(
                width: 20,
              ),
              Text(
                'Favourites',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/Mobile feed-pana.png',
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'No Favourites Yet !',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(
                  229,
                  76,
                  56,
                  1,
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Keep track of all the meals you like and keep \nthem in mind',
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),




          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 130,
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                // Add your button's action here
              },
              style: ElevatedButton.styleFrom(
                primary:
                Color.fromRGBO(229, 76, 56, 1), // Background color
                onPrimary: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                'Start',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 16,
                ),
              ),
            ),
          ),




























        ],
      ),
    ));
  }
}
