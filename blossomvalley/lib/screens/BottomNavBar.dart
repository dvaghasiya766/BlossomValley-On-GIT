import 'package:blossomvalley/screens/CartPage.dart';
import 'package:blossomvalley/screens/CategoriesPage.dart';
import 'package:blossomvalley/screens/FavoritesPage.dart';
import 'package:blossomvalley/screens/HomePage.dart';
import 'package:blossomvalley/screens/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:global_bottom_navigation_bar/global_bottom_navigation_bar.dart';

class Bottomnavbar extends StatefulWidget {
  Bottomnavbar({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _BottomnavbarState createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Color appBarColor = Color(0xFFE8E8E8); // Change this to your desired color
    return ScaffoldGlobalBottomNavigation(
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
      listOfChild: [
        Homepage(),
        CategoriesPage(),
        FavoritesPage(),
        ProfilePage(),
        // FifthScreen(),
      ],
      listOfBottomNavigationItem: buildBottomNavigationItemList(),
    );
  }

  List<BottomNavigationItem> buildBottomNavigationItemList() => [
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.dashboard,
            color: const Color.fromRGBO(117, 8, 23, 1),
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.space_dashboard_outlined,
            color: const Color(0xFF8C9B7E),
            size: 23,
          ),
          // title: 'Dashboard',
          color: Color(0xFFE8E8E8),
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.category,
            color: const Color.fromRGBO(117, 8, 23, 1),
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.category_outlined,
            color: const Color(0xFF8C9B7E),
            size: 23,
          ),
          // title: '',
          color: Color(0xFFE8E8E8),
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.favorite,
            color: const Color.fromRGBO(117, 8, 23, 1),
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.favorite_border,
            color: const Color(0xFF8C9B7E),
            size: 23,
          ),
          // title: '',
          color: Color(0xFFE8E8E8),
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.person_2,
            color: const Color.fromRGBO(117, 8, 23, 1),
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.person_2_outlined,
            color: const Color(0xFF8C9B7E),
            size: 23,
          ),
          // title: '',
          color: Color(0xFFE8E8E8),
          vSync: this,
        ),
      ];
}
//flutter pub publish --dry-run