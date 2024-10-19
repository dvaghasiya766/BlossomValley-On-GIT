import 'package:blossomvalley/screens/FavoritesPage.dart';
import 'package:blossomvalley/screens/HomePage.dart';
import 'package:blossomvalley/screens/CategoriesPage.dart';
import 'package:blossomvalley/screens/ProfilePage.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  // Add CategoriesPage to the list of pages
  final List<Widget> _pages = [
    // PlantListPage(), // Home page
    Homepage(),
    CategoriesPage(), // Categories page
    FavoritesPage(), // Favorites page
    ProfilePage(), // Profile page
  ];

  // Handle bottom navigation item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Show the corresponding page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(117, 8, 23, 1),
        unselectedItemColor: const Color(0xFF8C9B7E),
        backgroundColor: Color(0xFFE8E8E8),
        onTap: _onItemTapped,
      ),
    );
  }
}
