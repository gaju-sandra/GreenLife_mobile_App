import 'package:flutter/material.dart';
import '../widgets/hero_video.dart';
import '../widgets/green_footer.dart';
import '../widgets/green_header.dart';
import '../screens/about_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

      body: SingleChildScrollView(
  child: Column(
    children: [
      const GreenHeader(),
      // HERO SECTION
      Stack(
        alignment: Alignment.center,
        children: [
          const HeroVideo(),

          Container(
            width: double.infinity,
            height: 500,
            color: Colors.black54,
          ),

          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME TO THE KNOWLEDGE\nOF GREEN LIFE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  'Trees are the foundation of a healthy environment. '
                  'They provide oxygen, absorb carbon dioxide, '
                  'reduce pollution, prevent soil erosion, '
                  'and offer shelter to wildlife.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),

                SizedBox(height: 20),

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
                  'Read more →',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ],
            ),
          ),
        ],
      ),

      
      Container(
  width: double.infinity,
  padding: const EdgeInsets.all(30),
  child: Row(
    children: [
      Expanded(
        child: Image.asset(
          'lib/assets/images/gajuetchrista.jpg',
          height: 350,
          fit: BoxFit.cover,
        ),
      ),

      const SizedBox(width: 30),

      const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Minister Of GreenLife',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'The Green Life promotes the importance of protecting '
              'trees and maintaining a healthy environment. '
              'Through environmental awareness and responsible '
              'actions, we can help create a greener future.',
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            ),
SizedBox(height:20),
Text('"GAJU SANDRA"',
style:TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
)
)

          ],
        ),
      ),
    ],
  ),
),
//end of minister
 Container(
  width: double.infinity,
  padding: const EdgeInsets.all(30),
  child: Column(
    children: [
      const Text(
        'The Beauty of Trees',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),

      const SizedBox(height: 15),

      const Text(
        'Discover the beauty of trees and the important role '
        'they play in our environment.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
        ),
      ),

      const SizedBox(height: 30),

      Row(
        children: [
          Expanded(
            child: Image.asset(
              'lib/assets/images/igihaza.jpg',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Image.asset(
              'lib/assets/images/tall trees.jpg',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),

      const SizedBox(height: 15),

      Row(
        children: [
          Expanded(
            child: Image.asset(
              'lib/assets/images/green-forest.jpg',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Image.asset(
              'lib/assets/images/alot of trees.jpg',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ],
  ),
),
   const GreenFooter(),
    ],
  ),
),
    );
  }
}