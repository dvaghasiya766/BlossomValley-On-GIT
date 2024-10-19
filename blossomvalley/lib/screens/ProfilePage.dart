import 'package:blossomvalley/screens/CategoriesPage.dart';
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
    // return const Placeholder();
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
                      ),
                    ),
                    Text('blossomvcustomer@gmail.com'),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Edit profile action
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text('My Orders'),
              onTap: () {
                // Navigate to OrderListPage
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoriesPage(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('My Favorites'),
              onTap: () {
                // Navigate to FavoritesPage
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoriesPage(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Address Book'),
              onTap: () {
                // Navigate to AddressBookPage
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Homepage(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Payment Method'),
              onTap: () {
                // Navigate to Payment Method page (if implemented)
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Navigate to OrderListPage
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LandingPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
