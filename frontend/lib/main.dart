import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text("Get Data"),
            onPressed: () async {
              final response = await http.get(
                Uri.parse('http://172.20.10.2:3000/signup'),
              );
              print('Response from Node.js: ${response.body}');
            },
          ),
        ),
      ),
    );
  }
}
