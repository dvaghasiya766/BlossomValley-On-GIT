import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Featured Favorites',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(117, 8, 23, 1),
      ),
    );
  }
}
