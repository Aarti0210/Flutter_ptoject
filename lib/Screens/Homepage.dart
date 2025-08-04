import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';
import 'package:flutter_cookin/customWidget/customText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(width: 10),
            LogoText(
              text: "COOKIN",
              size: 16,
              weight: FontWeight.bold,
              color: AppColor.textColor,
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications_none, color: AppColor.textColor),
          SizedBox(width: 12),
          Icon(Icons.more_vert, color: AppColor.textColor),
          SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            // Text(
            //   "Your intelligent kitchen companion for smart, sustainable cooking.",
            //   style: TextStyle(),
            // ),
            IngredientText(
              text:
                  "Your intelligent kitchen companion for smart, sustainable cooking.",
              color: Colors.white70,
              size: 14,
            ),
            SizedBox(height: 20),

            Container(
              height: 197,
              width: 381,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF2C2A40),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: IngredientText(
                      text: "Your Culinary Insights",
                      color: AppColor.textColor,
                      size: 18,
                      weight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("✨", style: TextStyle(fontSize: 30)),
                          SizedBox(height: 8),
                          IngredientText(
                            text: "5 New",
                            color: AppColor.textColor,
                            size: 14,

                            weight: FontWeight.normal,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("📆", style: TextStyle(fontSize: 30)),
                          SizedBox(height: 8),
                          IngredientText(
                            text: "Today's",
                            color: AppColor.textColor,
                            size: 14,

                            weight: FontWeight.normal,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("⭐", style: TextStyle(fontSize: 30)),
                          SizedBox(height: 8),
                          IngredientText(
                            text: "3 Saved",
                            color: AppColor.textColor,
                            size: 14,

                            weight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              height: 440,
              width: 431,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF2C2A40),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   "",
                  //   style: TextStyle(color: , fontSize: 16),
                  // ),
                  IngredientText(
                    text: "Hello, User!",
                    color: Colors.white70,
                    size: 16,

                    weight: FontWeight.normal,
                  ),
                  SizedBox(height: 8),

                  IngredientText(
                    text: "What's in your fridge today?",
                    size: 18,
                    weight: FontWeight.bold,
                    color: AppColor.textColor,
                  ),

                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 180,
                      width: 318,
                      decoration: BoxDecoration(
                        color:
                            AppColor.primarycolor, // Darker shade to highlight
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: ButtonText(
                          text: "Fresh Ingredients",
                          color: AppColor.textColor,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Container(
                              height: 71,
                              width: 89,
                              decoration: BoxDecoration(
                                color: Color(0xFF3A3850),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      "📝",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            ButtonText(text: "Text"),
                          ],
                        ),
                      ),

                      Center(
                        child: Column(
                          children: [
                            Container(
                              height: 71,
                              width: 89,
                              decoration: BoxDecoration(
                                color: Color(0xFF3A3850),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      "🎙️",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            ButtonText(text: "Speak"),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              height: 71,
                              width: 89,
                              decoration: BoxDecoration(
                                color: Color(0xFF3A3850),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("📷", style: TextStyle(fontSize: 30)),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            ButtonText(text: "Scan"),
                          ],
                        ),
                      ),
                    ],
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
