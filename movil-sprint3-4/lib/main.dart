import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movil_app/firebase_options.dart';
import 'package:movil_app/pages/login_page.dart';
import 'package:movil_app/pages/register_page.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
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
      home: const LoginPage(),
    );
  }
}

