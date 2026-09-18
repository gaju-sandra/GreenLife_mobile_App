import 'package:flutter/material.dart';
import 'package:green_life/screens/home_screen.dart';
import '../screens/about_screen.dart';
import '../screens/contact_screen.dart';

class GreenHeader extends StatelessWidget {
  const GreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 7, 148, 12),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Text(
            'The Green Life',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                 onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const HomeScreen(),
                        ),
                    );
                  },
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              TextButton(
                 onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const AboutScreen(),
                        ),
                    );
                  },
                child: const Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              TextButton(
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const ContactScreen(),
                        ),
                    );
                  },
                child: const Text(
                  'Contact',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


