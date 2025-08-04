import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';
import 'package:flutter_cookin/customWidget/customText.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0B1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: // Text(
            //   "PROFILE",
            //   style: TextStyle(
            //     color: AppColor.textColor,,
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 1.5,
            //   ),
            // ),
            ButtonText(
              text: "PROFILE",
              color: AppColor.textColor,
              size: 20,
              weight: FontWeight.bold,
            ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red.shade800,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.logout, color: AppColor.textColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(110),
                      bottomRight: Radius.circular(110),
                    ),
                    child: Image.asset(
                      'assest/images/Vegetable.jpg',
                      width: double.infinity,
                      height: 350,
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
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60), // Account for overlapping avatar
              // Form Fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UserName",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        style: TextStyle(color: AppColor.textColor),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.white70,
                          ),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.white38),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        style: TextStyle(color: AppColor.textColor),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.white70,
                          ),
                          hintText: "email",
                          hintStyle: TextStyle(color: Colors.white38),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Phone",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        style: TextStyle(color: AppColor.textColor),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.phone,
                            color: Colors.white70,
                          ),
                          hintText: "phone",
                          hintStyle: TextStyle(color: Colors.white38),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
