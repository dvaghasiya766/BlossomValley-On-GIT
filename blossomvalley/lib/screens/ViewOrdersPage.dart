import 'package:flutter/material.dart';

class ViewOrdersPage extends StatelessWidget {
  // Sample data for demonstration
  final List<Map<String, dynamic>> orders = [
    {'id': 1, 'item': 'Plant A', 'quantity': 2, 'status': 'Shipped'},
    {'id': 2, 'item': 'Plant B', 'quantity': 1, 'status': 'Pending'},
    // Add more orders as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Orders'),
        backgroundColor: Color(0xFF750817), // Admin panel color
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text('Order ID: ${order['id']} - ${order['item']}'),
            subtitle: Text(
                'Quantity: ${order['quantity']} - Status: ${order['status']}'),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () {
                // Implement delete order functionality here
              },
            ),
          );
        },
      ),
    );
  }
}