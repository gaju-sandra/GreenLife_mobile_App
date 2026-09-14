import 'package:flutter/material.dart';

void main() {
  runApp(const GreenLifeApp());
}

class GreenLifeApp extends StatelessWidget {
  const GreenLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Text('Green Life'))),
    );
  }
}
