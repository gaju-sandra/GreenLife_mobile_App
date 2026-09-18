import 'package:flutter/material.dart';
import '../widgets/green_footer.dart';
import '../widgets/green_header.dart';
import '../widgets/hero_video.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // =========================
            // HEADER
            // =========================

            const GreenHeader(),

            // =========================
            // ABOUT US
            // =========================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    'ABOUT US',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Conservation is the practice of protecting and preserving '
                    'nature, including forests, trees, wildlife, water, and '
                    'other natural resources. It helps maintain the balance '
                    'of ecosystems and ensures that future generations can '
                    'benefit from a healthy environment. Through activities '
                    'such as planting trees, reducing pollution, recycling, '
                    'and using resources responsibly, we can protect the '
                    'planet and promote sustainable living. Conservation '
                    'reminds us that every action we take has an impact on '
                    'the environment and that caring for nature is a shared '
                    'responsibility.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            // =========================
            // TREES SECTION
            // =========================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'lib/assets/images/green-forest.jpg',
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
                          'Why Trees Matter',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          'Trees are an important part of our environment. '
                          'They provide oxygen, absorb carbon dioxide, '
                          'help prevent soil erosion, and provide habitats '
                          'for many different animals.',
                          style: TextStyle(
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // =========================
            // VIDEO SECTION
            // =========================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    'Nature and Conservation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Learn more about the beauty of nature and the '
                    'importance of protecting our environment.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const HeroVideo(),
                ],
              ),
            ),

            // =========================
            // SECOND IMAGE SECTION
            // =========================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Protect Our Environment',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          'Protecting nature is a responsibility shared by '
                          'everyone. Planting trees, reducing pollution, '
                          'recycling materials, and using natural resources '
                          'responsibly can help create a healthier planet.',
                          style: TextStyle(
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 30),

                  Expanded(
                    child: Image.asset(
                      'lib/assets/images/tall trees.jpg',
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            // =========================
            // FOOTER
            // =========================

            const GreenFooter(),
          ],
        ),
      ),
    );
  }
}