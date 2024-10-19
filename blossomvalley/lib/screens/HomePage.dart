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
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back arrow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.safety_check,
                  color: Color(0xFF333333)), // Set icon color
              onPressed: () {
                // Action when the cart icon is pressed
              },
            ),
            Image(
              image: AssetImage('assets/images/Blossom Valley (1).png'),
              height: 170,
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart,
                  color: Color(0xFF333333)), // Set icon color
              onPressed: () {
                // Action when the cart icon is pressed
              },
            ),
          ],
        ),
        backgroundColor: Color(0xFFE8E8E8),
      ),
      body: Column(
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
                top: BorderSide(
                  color: const Color.fromRGBO(
                      117, 8, 23, 1), // Set the color of the top border
                  width: 2.0, // Set the width of the top border
                ),
                bottom: BorderSide(
                  color: const Color.fromRGBO(
                      117, 8, 23, 1), // Set the color of the bottom border
                  width: 2.0, // Set the width of the bottom border
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
