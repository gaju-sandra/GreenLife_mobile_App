import 'package:flutter/material.dart';

class GreenFooter extends StatelessWidget {
  const GreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      color: const Color.fromARGB(255, 7, 148, 12),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            'Links',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          Text(
            'HOME',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),

          SizedBox(height: 20),

          Text(
            'About',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),

          SizedBox(height: 20),
          Text(
            'Contact',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),

          Text(
            '© 2026 The Green Life. All rights reserved.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}