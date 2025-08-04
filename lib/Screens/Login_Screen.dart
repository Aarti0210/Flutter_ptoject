import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';
import 'package:flutter_cookin/customWidget/customText.dart';
import 'package:flutter_cookin/customWidget/customtextfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  child: Image.asset(
                    'assest/images/Vegetable.jpg',
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  bottom: -50,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Color(0xFFFFF2CC),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assest/images/logo.png', width: 50),
                        SizedBox(height: 5),

                        LogoText(
                          text: "COOKIN",
                          size: 16,
                          weight: FontWeight.bold,
                        ),
                        Text(
                          "Tu Bol Apun Banayega",
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 80),

            Customtextfield(
              hintText: "Username",
              icon: Icon(Icons.lock, color: Colors.black54),
            ),
            SizedBox(height: 15),

            Customtextfield(
              hintText: "Password",
              icon: Icon(Icons.lock, color: Colors.black54),
            ),

            SizedBox(height: 8),

            Padding(
              padding: EdgeInsets.only(right: 35),
              child: Align(
                alignment: Alignment.centerRight,

                child: IngredientText(
                  text: "forget password?",
                  color: Colors.blue.shade700,
                  size: 12,
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.buttoncolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {},
                      child: ButtonText(text: "Login Here", size: 14),
                    ),
                  ),
                  SizedBox(width: 15),

                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColor.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {},
                      child: ButtonText(
                        text: "Sign Up",
                        size: 14,
                        color: AppColor.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            IngredientText(text: "or", color: AppColor.secondarycolor),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assest/images/facebook.png', width: 35),
                SizedBox(width: 15),

                Image.asset('assest/images/google.jpeg', width: 35),
                SizedBox(width: 15),

                Image.asset('assest/images/x-twitter.png', width: 35),
              ],
            ),

            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
