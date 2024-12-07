import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _moqController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _discountPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // Form content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
      SizedBox(height: 10,),
      Text(
        "Add Product",
        style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),),
                SizedBox(height: 50,),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Name
                      const Text(
                        "Product Name",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Product Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // MOQ
                      const Text(
                        "MOQ",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: _moqController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter MOQ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // Price
                      const Text(
                        "Price",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: _priceController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Price",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // Discount Price
                      const Text(
                        "Discount Price",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: _discountPriceController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Discount Price",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[200]!),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32.0),

                      // Submit Button
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color(0xFF0ACF83), // Green color for the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {
                            // Add your submit logic here
                            print("Product Name: ${_nameController.text}");
                            print("MOQ: ${_moqController.text}");
                            print("Price: ${_priceController.text}");
                            print("Discount Price: ${_discountPriceController.text}");
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(color: Colors.white,fontSize: 18, letterSpacing: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
