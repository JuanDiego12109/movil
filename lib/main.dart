import 'package:flutter/material.dart';
import 'package:movil_app/pages/register_page.dart';
import 'package:movil_app/pages/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turismo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ProductDetails(title: 'Turismo'),
      home: const ProductDetails(),
    );
  }
}
