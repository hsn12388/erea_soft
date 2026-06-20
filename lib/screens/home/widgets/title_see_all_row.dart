import 'package:flutter/material.dart';

class TitleSeeAllRow extends StatelessWidget {
  final String title;

  const TitleSeeAllRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Text(
          "See All",
          style: TextStyle(
            color: Color(0xff53B175),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
