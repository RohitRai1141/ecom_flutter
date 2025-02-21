import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
      id: '1',
      name: 'Classic White Shirt',
      description: 'A comfortable cotton shirt perfect for any occasion',
      price: 29.99,
      imageUrl: 'https://i.pinimg.com/474x/a8/83/61/a8836132606e0cda9f6b876071203edc.jpg',  
      availableSizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: '2',
      name: 'Black Denim Jeans',
      description: 'Stylish black jeans for everyday wear',
      price: 49.99,
      imageUrl: 'https://i.pinimg.com/736x/5c/0b/52/5c0b521e4dfd320f4147e73e05818238.jpg', 
      availableSizes: ['30', '32', '34', '36'],
    ),
    Product(
      id: '3',
      name: 'Summer T-Shirt',
      description: 'Light and breathable cotton t-shirt',
      price: 19.99,
      imageUrl: 'https://i.pinimg.com/736x/53/2b/bc/532bbc018e4ce361c4fe1bc683f0dc61.jpg', 
      availableSizes: ['S', 'M', 'L', 'XL', 'XXL'],
    ),
    Product(
      id: '4',
      name: 'Casual Hoodie',
      description: 'Comfortable hoodie for casual wear',
      price: 39.99,
      imageUrl: 'https://i.pinimg.com/474x/1b/a5/20/1ba520729eecb1070aa97a9600c0e863.jpg',  
      availableSizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      id: '5',
      name: 'Sports Shorts',
      description: 'Athletic shorts perfect for workouts',
      price: 24.99,
      imageUrl: 'https://www.soccerlord.se/wp-content/uploads/2022/05/Liverpool-Home-Football-Shorts-24-25.jpg',  
      availableSizes: ['S', 'M', 'L'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ProductCard(product: products[i]),
      ),
    );
  }
}