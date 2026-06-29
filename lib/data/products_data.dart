import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String unit;
  final String imageUrl;
  final String category;
  final IconData categoryIcon;
  final bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.unit,
    required this.imageUrl,
    required this.category,
    this.categoryIcon = Icons.category,
    this.isAvailable = true,
  });
}

class ProductsData {
  static final List<Product> allProducts = [
    Product(
      id: 'b1',
      name: 'Diet Coke',
      description: 'Diet Coke Can 355ml',
      price: 1.99,
      unit: '355ml',
      imageUrl: 'assets/images/diet_coke.png',
      category: 'Beverages',
      categoryIcon: Icons.local_drink,
    ),
    Product(
      id: 'b2',
      name: 'Sprite Can',
      description: 'Sprite Can 325ml',
      price: 1.50,
      unit: '325ml',
      imageUrl: 'assets/images/sprite.png',
      category: 'Beverages',
      categoryIcon: Icons.local_drink,
    ),
    Product(
      id: 'b3',
      name: 'Apple & Grape Juice',
      description: 'Apple & Grape Juice 2L',
      price: 15.99,
      unit: '2L',
      imageUrl: 'assets/images/apple_grape_juice.png',
      category: 'Beverages',
      categoryIcon: Icons.local_drink,
    ),
    Product(
      id: 'b4',
      name: 'Orange Juice',
      description: 'Orange Juice 2L',
      price: 15.99,
      unit: '2L',
      imageUrl: 'assets/images/orange_juice.png',
      category: 'Beverages',
      categoryIcon: Icons.local_drink,
    ),
    Product(
      id: 'b5',
      name: 'Coca Cola Can',
      description: 'Coca Cola Can 325ml',
      price: 4.99,
      unit: '325ml',
      imageUrl: 'assets/images/coca_cola.png',
      category: 'Beverages',
      categoryIcon: Icons.local_drink,
    ),
    Product(
      id: 'b6',
      name: 'Pepsi Can',
      description: 'Pepsi Can 330ml',
      price: 4.99,
      unit: '330ml',
      imageUrl: 'assets/images/pepsi.png',
      category: 'Beverages',
      categoryIcon: Icons.local_drink,
    ),
    Product(
      id: 'e1',
      name: 'Egg Chicken Red',
      description: 'Red Chicken Eggs 4pcs',
      price: 1.99,
      unit: '4pcs',
      imageUrl: 'assets/images/egg_red.png',
      category: 'Dairy & Eggs',
      categoryIcon: Icons.egg,
    ),
    Product(
      id: 'e2',
      name: 'Egg Chicken White',
      description: 'White Chicken Eggs 180g',
      price: 1.50,
      unit: '180g',
      imageUrl: 'assets/images/egg_white.png',
      category: 'Dairy & Eggs',
      categoryIcon: Icons.egg,
    ),
    Product(
      id: 'e3',
      name: 'Egg Pasta',
      description: 'Egg Pasta 30gm',
      price: 15.99,
      unit: '30gm',
      imageUrl: 'assets/images/egg_pasta.png',
      category: 'Dairy & Eggs',
      categoryIcon: Icons.egg,
    ),
    Product(
      id: 'e4',
      name: 'Egg Noodles',
      description: 'Egg Noodles 2L',
      price: 15.99,
      unit: '2L',
      imageUrl: 'assets/images/egg_noodles.png',
      category: 'Dairy & Eggs',
      categoryIcon: Icons.egg,
    ),
    Product(
      id: 'e5',
      name: 'Mayonnaise Eggless',
      description: 'Eggless Mayonnaise',
      price: 15.99,
      unit: '500ml',
      imageUrl: 'assets/images/mayonnaise.png',
      category: 'Dairy & Eggs',
      categoryIcon: Icons.egg,
    ),
  ];

  static List<Product> getProductsByCategory(String categoryName) {
    return allProducts
        .where((product) => product.category == categoryName)
        .toList();
  }

  static List<Map<String, dynamic>> getCategories() {
    Map<String, Map<String, dynamic>> categoryMap = {};
    for (var product in allProducts) {
      if (!categoryMap.containsKey(product.category)) {
        categoryMap[product.category] = {
          'title': product.category,
          'icon': product.categoryIcon,
          'color': _getCategoryColor(product.category),
          'borderColor': _getCategoryBorderColor(product.category),
          'count': 0,
        };
      }
      categoryMap[product.category]!['count'] =
          (categoryMap[product.category]!['count'] ?? 0) + 1;
    }
    return categoryMap.values.toList();
  }

  static Color _getCategoryColor(String category) {
    switch (category) {
      case 'Beverages':
        return Colors.blue.shade100;
      case 'Dairy & Eggs':
        return Colors.orange.shade100;
      default:
        return Colors.grey.shade100;
    }
  }

  static Color _getCategoryBorderColor(String category) {
    switch (category) {
      case 'Beverages':
        return Colors.blue;
      case 'Dairy & Eggs':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  static List<Product> searchProducts(String query) {
    if (query.isEmpty) return allProducts;
    return allProducts.where((product) {
      return product.name.toLowerCase().contains(query.toLowerCase()) ||
          product.category.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}
