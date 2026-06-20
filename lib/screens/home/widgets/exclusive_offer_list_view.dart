import 'package:eraasoft_task/screens/home/widgets/product_item.dart';
import 'package:eraasoft_task/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class ExclusiveOfferListView extends StatelessWidget {
  const ExclusiveOfferListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (contaxt, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (contaxt) => ProductDetailsScreen()),
            );
          },

          child: productItem(),
        ),
        separatorBuilder: (contaxt, index) => SizedBox(width: 10),
        itemCount: 10,
      ),
    );
  }
}
