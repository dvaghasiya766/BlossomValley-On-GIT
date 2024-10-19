import 'package:blossomvalley/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BlossomValleyApp());

class BlossomValleyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blossom Valley',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(117, 8, 23, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
