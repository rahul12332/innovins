import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),

      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          // Background image
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              '/home/amit/AndroidStudioProjects/innovins/assets/image/unnamed.png', // Provide correct path to your image
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          // Main content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu, color: Colors.black),
                    onPressed: () {
                      Scaffold.of(context).openDrawer(); // Correct context is used here
                    },
                  );
                },
              ),
              const SizedBox(height: 40), // Space for top padding
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),

                child: Text(
                  'Vegetables',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Vegetable categories and products list
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          _buildCategoryChip('Cabbage and lettuce', isSelected: true),
                          _buildCategoryChip('Cucumbers and tomatoes'),
                          _buildCategoryChip('Onions and garlic'),
                          _buildCategoryChip('Peppers'),
                          _buildCategoryChip('Potatoes and carrots'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildProductItem('Boston Lettuce', '/home/amit/AndroidStudioProjects/innovins/assets/image/img1.png', '1.10', 'piece'),
                    _buildProductItem('Purple Cauliflower', '/home/amit/AndroidStudioProjects/innovins/assets/image/img2.png', '1.85', 'kg'),
                    _buildProductItem('Savoy Cabbage', '/home/amit/AndroidStudioProjects/innovins/assets/image/img3.png', '1.45', 'kg'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build category chips
  Widget _buildCategoryChip(String label, {bool isSelected = false}) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) {},
      backgroundColor: Colors.grey[200],
      selectedColor: Colors.purple[100],
      labelStyle: TextStyle(color: isSelected ? Colors.purple : Colors.black),
    );
  }

  // Helper method to build product item
  Widget _buildProductItem(String title, String imagePath, String price, String unit) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: Container(
            height: 150,
            width: 120,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(title),
          subtitle: Text('$price € / $unit'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Like button
              InkWell(
                onTap: () {
                  // Action for like button
                },
                borderRadius: BorderRadius.circular(15), // Rounded splash effect
                splashColor: Colors.green, // Splash color
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey), // Grey border
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.grey, // Icon color
                  ),
                ),
              ),
              const SizedBox(width: 8), // Spacing between buttons

              // Add to cart button
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFF0ACF83), // Background color
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey), // Grey border
                ),
                child: IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    // Action for add to cart button
                  },
                  color: Colors.white, // Cart icon color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
