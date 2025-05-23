import 'package:flutter/material.dart';
import 'screens/homepage.dart'; // lowercase recommended

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const Homepage(),
    );
  }
}
