import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10.0), // Add padding around the body
        child: ListView(
          children: [
            _buildCategoryItem(
                'Plants', '100+ Varieties', 'assets/images/plants.jpeg'),
            SizedBox(height: 5),
            _buildCategoryItem(
                'Workshops', '80+ Varieties', 'assets/images/workshop.jpeg'),
            SizedBox(height: 5),
            _buildCategoryItem(
                'Furtilizer', '50+ Varieties', 'assets/images/furtilizer.jpeg'),
            SizedBox(height: 5),
            _buildCategoryItem(
                'More', '200+ Varieties', 'assets/images/more.jpeg'),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildCategoryItem(
      String category, String variety, String imgaddress) {
    return Card(
      elevation: 1, // Shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), // Rounded corners
      ),
      color:
          const Color(0xFFE8E8E8), // Set the background color of the card here
      child: Row(
        children: [
          Container(
            width: 130,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgaddress),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  variety,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
