// lib/screens/home/widgets/search_field.dart
import 'package:eraasoft_task/screens/search/search_screen.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  static final List<Map<String, dynamic>> allProducts = [
    {
      'name': 'Egg Chicken Red',
      'size': '4pcs, Price',
      'price': '\$1.99',
      'imagePath': 'assets/images/egg.png',
    },
    {
      'name': 'Egg Chicken White',
      'size': '180g, Price',
      'price': '\$1.50',
      'imagePath': 'assets/images/egg.png',
    },
    {
      'name': 'Egg Pasta',
      'size': '30gm, Price',
      'price': '\$15.99',
      'imagePath': 'assets/images/snaks.png',
    },
    {
      'name': 'Egg Noodles',
      'size': '2L, Price',
      'price': '\$15.99',
      'imagePath': 'assets/images/snaks.png',
    },
    {
      'name': 'Mayonnaise Eggless',
      'size': '250g, Price',
      'price': '\$4.99',
      'imagePath': 'assets/images/oil.png',
    },
    {
      'name': 'Organic Bananas',
      'size': '7pcs, Price',
      'price': '\$4.99',
      'imagePath': 'assets/images/fresh.png',
    },
    {
      'name': 'Red Apple',
      'size': '1kg, Price',
      'price': '\$4.99',
      'imagePath': 'assets/images/fresh.png',
    },
    {
      'name': 'Beef Bone',
      'size': '1kg, Price',
      'price': '\$4.99',
      'imagePath': 'assets/images/لحمه.png',
    },
    {
      'name': 'Broiler Chicken',
      'size': '1kg, Price',
      'price': '\$4.99',
      'imagePath': 'assets/images/meat.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SearchScreen(allProducts: allProducts),
          ),
        );
      },
      child: AbsorbPointer(
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: const Color(0xFFF2F3F2),
            filled: true,
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            hintText: 'Search Store',
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
