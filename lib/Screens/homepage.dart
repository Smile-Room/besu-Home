import 'package:flutter/material.dart';





class HomePage extends StatelessWidget {
  // Sample data for each section
  final List<Map<String, String>> sponsoredItems = [
    {'image': 'assets/sponsored1.png', 'text': 'Sponsored 1'},
    {'image': 'assets/sponsored2.png', 'text': 'Sponsored 2'},
    {'image': 'assets/sponsored3.png', 'text': 'Sponsored 3'},
  ];

  final List<Map<String, String>> cosmeticsItems = [
   {'image': 'assets/sponsored1.png', 'text': 'Sponsored 1'},
    {'image': 'assets/sponsored2.png', 'text': 'Sponsored 2'},
    {'image': 'assets/sponsored3.png', 'text': 'Sponsored 3'},
  ];

  final List<Map<String, String>> wearablesItems = [
  {'image': 'assets/sponsored1.png', 'text': 'Sponsored 1'},
    {'image': 'assets/sponsored2.png', 'text': 'Sponsored 2'},
    {'image': 'assets/sponsored3.png', 'text': 'Sponsored 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-commerce Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSection('Sponsored', sponsoredItems),
            buildSection('Cosmetics', cosmeticsItems),
            buildSection('Wearables', wearablesItems),
          ],
        ),
      ),
    );
  }

  // Helper method to create each section
  Widget buildSection(String title, List<Map<String, String>> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 200, // Set a height for the card section
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return buildCard(items[index]['image']!, items[index]['text']!);
              },
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each card
  Widget buildCard(String imageUrl, String text) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
