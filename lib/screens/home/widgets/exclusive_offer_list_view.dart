import 'package:eraasoft_task/screens/home/widgets/product_item.dart';
import 'package:eraasoft_task/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class ExclusiveOfferListView extends StatelessWidget {
  final List<Map<String, String>> products;

  const ExclusiveOfferListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        separatorBuilder: (_, __) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          final p = products[index];
          return ProductItem(
            name: p['name']!,
            weight: p['weight']!,
            price: p['price']!,
            imageUrl: p['imageUrl']!,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailsScreen(
                    name: p['name']!,
                    weight: p['weight']!,
                    price: p['price']!,
                    imageUrl: p['imageUrl']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
