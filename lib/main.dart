import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sih/myprofile.dart';
import 'package:sih/sign_in_screen.dart';

void main() {
  runApp(MaterialApp(home: Myprofile(),));
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(SignInScreen());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SignInScreen(),
//     );
//   }
// }