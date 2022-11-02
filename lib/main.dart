import 'package:flutter/material.dart';
import 'package:movil_app/pages/register_page.dart';

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
      home: const RegisterPage(title: 'Turismo'),
    );
  }
}

