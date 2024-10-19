import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(117, 8, 23, 1),
      ),
    );
  }
}
