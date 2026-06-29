import 'package:flutter/material.dart';

class GroceriesCategoryView extends StatelessWidget {
  const GroceriesCategoryView({super.key});

  static const List<Map<String, dynamic>> categories = [
    {
      'name': 'Pulses',
      'color': Color(0xffFFF3E0),
      'imageUrl': 'assets/images/plu.png',
    },
    {
      'name': 'Rice',
      'color': Color(0xffF2F9EC),
      'imageUrl': 'assets/images/8-82858_download-sack-of-rice-png 1.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          final cat = categories[index];
          return Container(
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: cat['color'] as Color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Image.asset(
                  cat['imageUrl'] as String,
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => const Icon(
                    Icons.image_not_supported,
                    size: 40,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  cat['name'] as String,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
