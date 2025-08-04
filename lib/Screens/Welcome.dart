import 'dart:math';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<Offset>> _animations;

  final List<String> veggieImages = [
    'assest/images/onion.png',
    'assest/images/coriender.png',
    'assest/images/lemon.png',
    'assest/images/tomato.png',
    'assest/images/lemon.png',
  ];

  final List<Alignment> basePositions = [
    const Alignment(1, -0.9), // top-right
    const Alignment(-1, -0.6), // top-left
    const Alignment(1, 0.3), // mid-right
    const Alignment(-1, 0.8), // bottom-left
    const Alignment(0.5, 1.1), // bottom-right
  ];

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(veggieImages.length, (index) {
      return AnimationController(
        vsync: this,
        duration: Duration(seconds: 3 + index),
      )..repeat(reverse: true);
    });

    _animations = _controllers.map((controller) {
      final random = Random();
      return Tween<Offset>(
        begin: Offset(random.nextDouble() * 0.05, random.nextDouble() * 0.05),
        end: Offset(random.nextDouble() * -0.05, random.nextDouble() * -0.05),
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    }).toList();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0B0623), Color(0xFF1C103E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Animated veggies
            ...List.generate(veggieImages.length, (index) {
              return SlideTransition(
                position: _animations[index],
                child: Align(
                  alignment: basePositions[index],
                  child: Image.asset(veggieImages[index], height: 60),
                ),
              );
            }),

            // Center content
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Heyy Battery!!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Circular background for chef
                Container(
                  height: 180,
                  width: 180,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2D2940),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assest/images/chef.png'),
                  ),
                ),

                const SizedBox(height: 20),
                const Text(
                  "What's in your fridge today?",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),

                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.kitchen, color: Colors.white),
                  label: const Text("Start Now"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                const Text(
                  "Aaj Kya Banega?",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
