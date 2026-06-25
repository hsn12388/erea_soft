import 'package:eraasoft_task/screens/auth/login_screen.dart';
import 'package:eraasoft_task/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:flutter/material.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}
