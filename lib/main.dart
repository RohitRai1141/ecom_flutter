import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/cart_provider.dart';
import './screens/home_screen.dart';
import './screens/product_detail_screen.dart';
import './screens/cart_screen.dart';  

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
        routes: {
          '/product-detail': (ctx) => const ProductDetailScreen(),
          '/cart': (ctx) => const CartScreen(),
        },
      ),
    );
  }
}