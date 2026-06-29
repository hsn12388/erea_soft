import 'package:eraasoft_task/screens/auth/login_screen.dart';
import 'package:eraasoft_task/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                Center(child: Image.asset("assets/images/Group.png")),
                const SizedBox(height: 60),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Enter your credentials to continue",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 40),
                const Text("Username"),
                const TextField(),
                const SizedBox(height: 30),
                const Text("Email"),
                const TextField(
                  decoration: InputDecoration(
                    suffix: Icon(Icons.check_circle, color: Colors.green),
                  ),
                ),
                const SizedBox(height: 30),
                const Text("Password"),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(suffix: Icon(Icons.visibility)),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                          children: const [
                            TextSpan(text: "By continuing you agree to our "),
                            TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff53B175),
                              ),
                            ),
                            TextSpan(text: " and "),
                            TextSpan(
                              text: "Privacy Policy.",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff53B175),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => BottomNavBarScreen()),
                      (route) => false,
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 67,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => LoginScreen()),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53B175),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
