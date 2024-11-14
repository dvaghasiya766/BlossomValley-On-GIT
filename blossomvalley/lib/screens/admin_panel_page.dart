import 'package:blossomvalley/screens/AddItemsPage.dart';
import 'package:blossomvalley/screens/ViewOrdersPage.dart';
import 'package:flutter/material.dart';

class AdminPanelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel'),
        backgroundColor: Color(0xFF750817), // Admin panel color
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ViewOrdersPage()),
              );
            },
            child: Text('View Orders'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddItemsPage()),
              );
            },
            child: Text('Add Items'),
          ),
        ],
      ),
    );
  }
}
