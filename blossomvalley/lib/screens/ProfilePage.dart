import 'package:blossomvalley/screens/CategoriesPage.dart';
import 'package:blossomvalley/screens/FavoritesPage.dart';
import 'package:blossomvalley/screens/HomePage.dart';
import 'package:blossomvalley/screens/LandingPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_image.jpeg'),
                  radius: 30.0,
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Richa Valentino',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'blossomvcustomer@gmail.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit), // Set color
                  onPressed: () {
                    // Edit profile action
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  _buildListTile(Icons.eco, '100 Eco Points', () {
                    // Navigate to Payment Method page (if implemented)
                  }),
                  _buildListTile(Icons.receipt, 'My Orders', () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CategoriesPage(),
                      ),
                    );
                  }),
                  _buildListTile(Icons.favorite, 'My Favorites', () {
                    // Navigate to FavoritesPage
                    // Implement this page and uncomment below line
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FavoritesPage(),
                      ),
                    );
                  }),
                  _buildListTile(Icons.home, 'Address Book', () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ),
                    );
                  }),
                  _buildListTile(Icons.credit_card, 'Payment Method', () {
                    // Navigate to Payment Method page (if implemented)
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white, // Change the background color here
    );
  }

  Widget _buildListTile(IconData icon, String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: const Color.fromRGBO(117, 8, 23, 1),
            size: 30,
          ), // Set icon color
          title: Text(title),
          onTap: onTap,
        ),
        Divider(),
      ],
    );
  }
}
