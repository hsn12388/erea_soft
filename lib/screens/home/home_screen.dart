import 'package:eraasoft_task/screens/home/widgets/exclusive_offer_list_view.dart';
import 'package:eraasoft_task/screens/home/widgets/home_header.dart';
import 'package:eraasoft_task/screens/home/widgets/product_item.dart';
import 'package:eraasoft_task/screens/home/widgets/search_field.dart';
import 'package:eraasoft_task/screens/home/widgets/title_see_all_row.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              HomeHeader(),
              SizedBox(height: 20),
              SearchField(),
              SizedBox(height: 30),
              TitleSeeAllRow(title: "Esclusive offer"),
              SizedBox(height: 20),
              ExclusiveOfferListView(),
              SizedBox(height: 20),
              TitleSeeAllRow(title: "Best selling"),
              SizedBox(height: 20),
              ExclusiveOfferListView(),
            ],
          ),
        ),
      ),
    );
  }
}
