import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';
import 'package:flutter_cookin/customWidget/customText.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.textColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 20),

                //  Text(
                //   "Sign Up To App",
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                // ),
                IngredientText(text: 'Sign Up To App',size: 20,weight: FontWeight.bold,),

                 SizedBox(height: 20),

                 Text("UserName"),
                 SizedBox(height: 5),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon:  Icon(Icons.person, color: Colors.black54),
                    contentPadding:  EdgeInsets.symmetric(vertical: 14),
                    filled: true,
                    fillColor: AppColor.textColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Color(0xFFB80E0E)),
                    ),
                  ),
                ),

                 SizedBox(height: 15),

                 Text("Email"),
                 SizedBox(height: 5),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "email",
                    prefixIcon:  Icon(Icons.email, color: Colors.black54),
                    contentPadding:  EdgeInsets.symmetric(vertical: 14),
                    filled: true,
                    fillColor: AppColor.textColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Color(0xFFB80E0E)),
                    ),
                  ),
                ),

                 SizedBox(height: 15),

                 Text("Phone"),
                 SizedBox(height: 5),
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "phone",
                    prefixIcon:  Icon(Icons.phone, color: Colors.black54),
                    contentPadding:  EdgeInsets.symmetric(vertical: 14),
                    filled: true,
                    fillColor: AppColor.textColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Color(0xFFB80E0E)),
                    ),
                  ),
                ),

                 SizedBox(height: 15),

                 Text("Password"),
                 SizedBox(height: 5),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon:  Icon(Icons.lock, color: Colors.black54),
                    contentPadding:  EdgeInsets.symmetric(vertical: 14),
                    filled: true,
                    fillColor: AppColor.textColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Color(0xFFB80E0E)),
                    ),
                  ),
                ),

                 SizedBox(height: 15),

                 Text("Confirm Password"),
                 SizedBox(height: 5),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: Icon(Icons.lock, color: Colors.black54),
                    contentPadding:  EdgeInsets.symmetric(vertical: 14),
                    filled: true,
                    fillColor: AppColor.textColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(color: Color(0xFFB80E0E)),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.buttoncolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          print("Username: ${usernameController.text}");
                        },
                        child: ButtonText(
                          text: "Sign Up",
                          size: 14,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side:  BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding:  EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: ButtonText(
                          text: "Back",
                          size: 14,
                          color: AppColor.black,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Center(
                  child: IngredientText(
                    text: "or",
                    color: AppColor.secondarycolor,
                  ),
                ),
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

                 SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
