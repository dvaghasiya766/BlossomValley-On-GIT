import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight), // Set height to match AppBar
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: const Color.fromRGBO(
                    117, 8, 23, 1), // Set the color of the bottom border
                width: 2.0, // Set the width of the bottom border
              ),
            ),
          ),
          child: AppBar(
            title: Text(
              'Your Cart',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'K2D',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xFFE8E8E8),
          ),
        ),
      ),
      body: Center(
        child: Text('This is the shopping cart page.'),
      ),
    );
  }
}
