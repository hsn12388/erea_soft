import 'package:eraasoft_task/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
              Center(child: Image.asset("assets/images/Group.png")),
              SizedBox(height: 100),

              Text(
                "loging",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your email and password",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Text("Email"),
              TextFormField(),

              SizedBox(height: 30),
              Text("Password"),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffix: Icon(Icons.visibility),
                  // prefix: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot Password?"),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (conext) => HomeScreen()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 67,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff53B175),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Text(
                    "login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Sing Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff53B175),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
