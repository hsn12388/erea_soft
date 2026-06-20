import 'package:flutter/material.dart';

class detalsHeaderScreen extends StatelessWidget {
  const detalsHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 371,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.arrow_back_ios), Icon(Icons.share)],
            ),
            SizedBox(height: 27),
            Image.asset(
              'assets/images/Group.png',
              width: 329,
              height: 199,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
