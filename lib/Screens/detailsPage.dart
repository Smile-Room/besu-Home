import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // First section with image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://example.com/image.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Buy Our Products',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Discover our range of products tailored for you.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Third section with pricing and description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ETB 7,700',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Items: Cloth\nBrand: Sony\nColor: Red',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Fourth section with buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle Retail Contact Info
                    },
                    child: Text('Retail Contact Info'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Add to Whitelist
                    },
                    child: Text('Add to Whitelist'),
                  ),
                ],
              ),
            ),

            // Fifth section for rating
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Rate this Retailer', style: TextStyle(fontSize: 18)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(5, (index) {
                      return Icon(Icons.star, color: Colors.amber);
                    }),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Leave your comments...',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
