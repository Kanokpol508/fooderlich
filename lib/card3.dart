import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tags = [
      'Healthy',
      'Vegan',
      'Carrots',
      'Greens',
      'Wheat',
      'Pescetarian',
      'Mint',
      'Lemongrass',
      'Salad',
      'Water',
    ];

    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        // ปรับขนาดให้เท่ากับ Card1 คือ กว้าง 350 และ สูง 450
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/str.jpg'),
            fit: BoxFit.cover,
          ),
          // ปรับความโค้งมนให้เท่ากับ Card1 (10.0)
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.bookmark, color: Colors.white),
            const SizedBox(height: 8),
            const Text(
              'Recipe Trends',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 12.0,
              runSpacing: 12.0,
              children: tags
                  .map(
                    (tag) => Chip(
                      label: Text(
                        tag,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
