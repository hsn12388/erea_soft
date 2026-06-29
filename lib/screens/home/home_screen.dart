import 'package:eraasoft_task/screens/home/widgets/exclusive_offer_list_view.dart';
import 'package:eraasoft_task/screens/home/widgets/groceries_category_view.dart';
import 'package:eraasoft_task/screens/home/widgets/home_banner.dart';
import 'package:eraasoft_task/screens/home/widgets/home_header.dart';
import 'package:eraasoft_task/screens/home/widgets/search_field.dart';
import 'package:eraasoft_task/screens/home/widgets/title_see_all_row.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> exclusiveOffers = [
    {
      'name': 'Organic Bananas',
      'weight': '7pcs, Priceg',
      'price': '\$4.99',
      'imageUrl': 'https://www.themealdb.com/images/ingredients/Banana.png',
    },
    {
      'name': 'Red Apple',
      'weight': '1kg, Priceg',
      'price': '\$4.99',
      'imageUrl': 'https://www.themealdb.com/images/ingredients/Apple.png',
    },
    {
      'name': 'Bell Pepper',
      'weight': '1kg, Priceg',
      'price': '\$3.99',
      'imageUrl': 'assets/images/فلفل.png',
    },
  ];

  final List<Map<String, String>> bestSelling = [
    {
      'name': 'Bell Pepper Red',
      'weight': '1kg, Priceg',
      'price': '\$4.99',
      'imageUrl': 'assets/images/فلفل.png',
    },
    {
      'name': 'Ginger',
      'weight': '250gm, Priceg',
      'price': '\$4.99',
      'imageUrl': 'assets/images/لاتم.png',
    },
  ];

  final List<Map<String, String>> groceriesProducts = [
    {
      'name': 'Beef Bone',
      'weight': '1kg, Priceg',
      'price': '\$4.99',
      'imageUrl': 'assets/images/لحمه.png',
    },
    {
      'name': 'Broiler Chicken',
      'weight': '1kg, Priceg',
      'price': '\$4.99',
      'imageUrl': 'assets/images/فراخ.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const HomeHeader(),
              const SizedBox(height: 20),
              const SearchField(),
              const SizedBox(height: 20),
              const HomeBanner(),
              const SizedBox(height: 25),
              const TitleSeeAllRow(title: "Exclusive Offer"),
              const SizedBox(height: 15),
              ExclusiveOfferListView(products: exclusiveOffers),
              const SizedBox(height: 25),
              const TitleSeeAllRow(title: "Best Selling"),
              const SizedBox(height: 15),
              ExclusiveOfferListView(products: bestSelling),
              const SizedBox(height: 25),
              const TitleSeeAllRow(title: "Groceries"),
              const SizedBox(height: 15),
              const GroceriesCategoryView(),
              const SizedBox(height: 15),
              ExclusiveOfferListView(products: groceriesProducts),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
