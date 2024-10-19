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
              icon: Icon(Icons.shopping_cart,
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
    );
  }
}
