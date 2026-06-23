import 'package:flutter/material.dart';

class productItem extends StatelessWidget {
  const productItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Color(0xffE2E2E2)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/pngfuel.png'),
          SizedBox(height: 30),
          Text(
            "Red Apple",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5),
          Text('1kg , priceg', style: TextStyle(color: Color(0xff7C7C7C))),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "4.99",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xff53B175),
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
