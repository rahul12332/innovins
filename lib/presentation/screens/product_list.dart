import 'package:flutter/material.dart';
import 'package:innovins/presentation/screens/home.dart';
import 'package:innovins/presentation/widgets/app_drawer.dart';

class ProductListingScreen extends StatelessWidget {
  final List<Map<String, String>> products = List.generate(
    6,
        (index) => {
      "name": "Tomato",
      "id": "AB11001",
      "price": "1299",
      "discountPrice": "999",
    },
  );

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
          // Content overlay
          Column(
            children: [
              // Custom AppBar
              Container(
                color: Colors.transparent, // AppBar background color
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const Text(
                      "Product Listing",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 48), // Spacer for symmetry
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              // Search Bar
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
              const SizedBox(height: 16.0),
              // Product List
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  padding: const EdgeInsets.all(16.0),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Card(
                      color: Color(0xFF00B15C),
                      shadowColor: Colors.grey,
                      elevation: 0.3,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(16.0),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // Product Details
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Product Name: ${product['name']}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("MOQ: ${product['id']}"),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      Text("Price: ${product['price']}"),
                                      const SizedBox(width: 16.0),
                                      Text(
                                        "Discount Price: ${product['discountPrice']}",
                                        style: const TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Edit and Delete Icons
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit, color: Colors.grey),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete, color: Colors.grey),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
