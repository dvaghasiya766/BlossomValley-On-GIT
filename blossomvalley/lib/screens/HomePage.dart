import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width, // Full screen width
            height: 169.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/Ads1.jpeg'), // Set background image
                fit: BoxFit
                    .cover, // Make sure the image covers the entire container
              ),
              border: Border(
                bottom: BorderSide(
                  color: const Color.fromRGBO(
                      117, 8, 23, 1), // Set the color of the bottom border
                  width: 2.0, // Set the width of the bottom border
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Text(
              "New Arrivals",
              style: TextStyle(
                color: const Color.fromRGBO(117, 8, 23, 1),
                fontFamily: 'K2D',
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
