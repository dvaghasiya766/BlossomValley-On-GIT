import 'package:blossomvalley/screens/CartPage.dart';
import 'package:blossomvalley/screens/CategoriesPage.dart';
import 'package:blossomvalley/screens/FavoritesPage.dart';
import 'package:blossomvalley/screens/HomePage.dart';
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
    Homepage(), // Homepage
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
    // Define a common color for AppBar and BottomNavigationBar
    Color appBarColor = Color(0xFFE8E8E8); // Change this to your desired color

    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight), // Set height to match AppBar
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color:
                    const Color.fromRGBO(117, 8, 23, 1), // Bottom border color
                width: 2.0, // Width of the bottom border
              ),
            ),
          ),
          child: AppBar(
            automaticallyImplyLeading: false, // Removes the back arrow
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.safety_check,
                      color: Color(0xFF333333)), // Set icon color
                  onPressed: () {
                    // Action when the icon is pressed
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
                    // Navigate to CartPage
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Cartpage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            backgroundColor: appBarColor, // Set AppBar background color
          ),
        ),
      ),
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
        backgroundColor: appBarColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
