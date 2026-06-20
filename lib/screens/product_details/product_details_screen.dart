import 'package:eraasoft_task/screens/product_details/widgets/details_header.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          detalsHeaderScreen(),

          Expansible(
            headerBuilder: (context, a) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Product detail"), Icon(Icons.arrow_downward)],
            ),
            bodyBuilder: (c, a) => Text("data"),
            controller: ExpansibleController(),
          ),
        ],
      ),
    );
  }
}
