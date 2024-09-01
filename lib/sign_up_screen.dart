import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import '../bluebutton.dart';
import '../textbox.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 228, 228),
        body: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                child: Image.asset('assets/images/shape2.png')),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back))
              ],
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.1,
                  ),
                  Image.asset(
                    'assets/images/tree1.png',
                    width: 100, // Set the desired width
                    height: 100, // Set the desired height
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "WELCOME ONBOARD!",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Let's help you meet up with your tasks",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 20,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),
                  Textbox(text: "Enter your Full Name", isPwd: false),
                  Textbox(text: "Enter your email", isPwd: false),
                  Textbox(text: "Enter Password", isPwd: true),
                  Textbox(text: "Confirm Password", isPwd: true),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Bluebutton(buttonText: "Register"),
                  const Text(
                    "or you can sign in with",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/google.png'),
                      ),
                      SignInButton(
                        Buttons.gitHub,
                        mini: true,
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.linkedIn,
                        mini: true,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text(
                    "This app is protected by reCAPTCHA and the Google Privacy Policy and Terms of Service apply.",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
