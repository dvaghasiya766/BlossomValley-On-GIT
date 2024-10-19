import 'package:blossomvalley/screens/LandingPage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// Splash Screen for the Blossom Valley App
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8C9B7E),
      body: Center(
        child: Image.asset(
          'assets/images/Blossom Valley_reverse.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
