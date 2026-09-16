import 'package:flutter/material.dart';

void main() {
  runApp(const GreenLifeApp());
}

class GreenLifeApp extends StatelessWidget {
  const GreenLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    String appTitle = ' The Green Life';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 148, 12),
          elevation: 4,

          title: Column(
            children: [
              Text(
                appTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('About', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contact',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          
          children: [
            
            Text('Welcome to the Green Life'),
            Text('Trees are important for our environment.'),
          ],
        ),
      ),
    );
  }
}
