import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innovins/presentation/screens/product_list.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0; // Keeps track of the selected tab

  // List of screens for navigation
  final List<Widget> _screens = [
    ProductListingScreen(), // Product listing content
    Center(child: Text('Cart Page', style: TextStyle(fontSize: 24))), // Cart placeholder
    HomeScreen(), // Navigate to Home screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected tab index
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Highlight the selected tab
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
        selectedItemColor: Colors.green, // Selected item color
        unselectedItemColor: Colors.grey, // Unselected item color
      ),
    );
  }
}
