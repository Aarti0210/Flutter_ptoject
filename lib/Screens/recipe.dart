import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';
import 'package:flutter_cookin/customWidget/customText.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0623),
      body: SafeArea(
        child: Column(
          children: [
            // Top curved section with stack
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2D2940),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(110),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: RecipeTitleText(
                          text: 'Kanda bhaji',
                          size: 24,
                          color: AppColor.textColor,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // Food Image overlapping bottom
                Positioned(
                  bottom: -80,
                  left: 20,
                  right: 0,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assest/images/kandabhaji.png",
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 80), // spacing after overlap

            // Ingredients title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Ingredients horizontal list
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  ingredientItem("assest/images/onion.jpg"),
                  const SizedBox(width: 12),
                  ingredientItem("assest/images/besan.jpg"),
                  const SizedBox(width: 12),
                  ingredientItem("assest/images/chilli.jpeg"),
                  const SizedBox(width: 12),
                  ingredientItem("assest/images/haldi.jpeg"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Description title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Description scroll
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: const Text(
                    'For a very quick pakora recipe, follow these steps:\n'
                    '1. Chop: Finely chop your favorite vegetables like onion, spinach, or potato slices.\n'
                    '2. Mix: Combine chopped veggies, chickpea flour (besan), salt, red chili powder, turmeric, and other spices as desired.\n'
                    '3. Add Water (Gradually): Mix in a small amount of water at a time until you get a thick, sticky batter that coats the vegetables.',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable ingredient container
  Widget ingredientItem(String image) {
    return Container(
      width: 66,
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xFF2D2940),
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }
}
