import 'package:flutter/material.dart';
import 'package:flutter_cookin/Screens/Forgot_Password.dart';
import 'package:flutter_cookin/Screens/Homepage.dart';
import 'package:flutter_cookin/Screens/Login_Screen.dart';
import 'package:flutter_cookin/Screens/Sign_Up.dart';
import 'package:flutter_cookin/Screens/Suggestion.dart';
import 'package:flutter_cookin/Screens/profile.dart';
import 'package:flutter_cookin/Screens/recipe.dart';
import 'package:flutter_cookin/Screens/saved.dart';
import 'package:flutter_cookin/Screens/scan.dart';
import 'package:flutter_cookin/Screens/speak.dart';
import 'package:flutter_cookin/Screens/tabs.dart';
import 'package:flutter_cookin/Screens/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
      
    '/': (context) =>Tabs(),
   '/Loginpage_' : (context) =>LoginPage(),
   '/forgot_password_': (context) =>ForgotPassword(),
   'Sign up_': (context) =>SignUp(),
   '/homepage_': (context) =>HomePage(),
   '/profile_': (context) =>Profile(),
   '/recipe_': (context) =>Recipe(),
   '/saved_': (context) =>Saved(),
   '/scan_': (context) =>ScanScreen(),
   '/speak': (context) =>Speak(),
   'suggession': (context) =>Suggession(),
   '/tabs': (context) =>Tabs(),
   '/text': (context) =>Textscreen(),
         },

         
          
    );
  }
}