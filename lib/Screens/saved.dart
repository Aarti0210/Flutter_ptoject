
import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> savedItems = [
      {"name": "Fried Rice", "image": "assets/images/veg-fried-rice.jpg"},
      {"name": "Ghujiya", "image": "assets/images/download (1).jpeg"},
      {"name": "Upma", "image": "assets/images/upma.jpeg"},
      {"name": "Noodles", "image": "assets/images/noodles.jpg"},
      {"name": "Dhokla", "image": "assets/images/dhokla.jpg"},
    ];

    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button & Title
              Row(
                children: [
                  Icon(Icons.arrow_back, color: AppColor.textColor, size: 28),
                  SizedBox(width: 10),
                  Text(
                    'Saved💓',
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              
              Expanded(
                child: ListView.builder(
                  itemCount: savedItems.length,
                  itemBuilder: (context, index) {
                    final item = savedItems[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColor.secondarycolor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          // Image container with border radius and asset image
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              image: DecorationImage(
                                image: AssetImage(item["image"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["name"]!,
                                style: TextStyle(
                                  color: AppColor.textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Favorite",
                                style: TextStyle(
                                  color: AppColor.textColor,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}