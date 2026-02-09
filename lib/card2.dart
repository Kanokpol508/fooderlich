import 'package:flutter/material.dart';
import 'dart:math' as math;

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/smoo.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/large.jpg'),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Kanokpol Kaewsri',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                          ),
                          const Text(
                            'Smoothie Connoisseur',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.favorite_border, color: Colors.grey),
                ],
              ),
            ),

            Positioned(
              bottom: 80,
              left: 16,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'Smoothies',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 16,
              right: 16,
              child: Text(
                'Recipe',
                style: Theme.of(
                  context,
                ).textTheme.displaySmall?.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
