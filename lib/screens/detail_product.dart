import 'package:flutter/material.dart';
import 'package:lol_champion_collection/models/product.dart';
import 'package:lol_champion_collection/widgets/left_drawer.dart';

class ProductDetailPage extends StatelessWidget {
  final Product item;

  const ProductDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Champion Details'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text("Amount: ${item.fields.amount}"),
            const SizedBox(height: 10),
            Text("Description: ${item.fields.description}"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the item list page
              },
              child: const Text('Back to Champions List'),
            ),
          ],
        ),
      ),
    );
  }
}