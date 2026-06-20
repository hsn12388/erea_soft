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
                "Sign Up",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Text("Username"),
              TextFormField(),

              SizedBox(height: 30),
              Text("Email"),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  suffix: Icon(Icons.check_circle, color: Colors.green),
                ),
              ),

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
              Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                        children: [
                          TextSpan(text: "By continuing you agree to our "),
                          TextSpan(
                            text: "Terms of Service",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xfff53b175),
                            ),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy.",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xfff53b175),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 67,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Text(
                  "Sing Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
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
