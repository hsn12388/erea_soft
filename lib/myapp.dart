import 'package:eraasoft_task/login_screen.dart';
import 'package:flutter/material.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
