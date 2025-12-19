import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:project_one/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Fit',
      home: const LoginPage(),
    );
  }
}
