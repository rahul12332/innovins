import 'package:flutter/material.dart';
import 'package:innovins/presentation/screens/add_product.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Close button at the top
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.purple),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(height: 16),
          // Menu Items
          ListTile(
            leading: const Icon(Icons.add_box_outlined, color: Colors.black),
            title: const Text("Add Product"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder)=>AddProductScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_list, color: Colors.black),
            title: const Text("View Listing"),
            onTap: () {
              Navigator.of(context).pushNamed('/product-listing');
            },
          ),
        ],
      ),
    );
  }
}
