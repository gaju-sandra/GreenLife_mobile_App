import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const GreenLifeApp());
}

class GreenLifeApp extends StatelessWidget {
  const GreenLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Green Life',

      home: const HomeScreen(),
    );
  }
}