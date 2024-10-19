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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Text(
            //   'Dashboard',
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontFamily: 'K2D',
            //     fontSize: 25.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Image(
              image: AssetImage('assets/images/Blossom Valley_avatar (1).png'),
              height: 60,
            ),
            SizedBox(
              width: 50,
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
