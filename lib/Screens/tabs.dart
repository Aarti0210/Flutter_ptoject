import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';

// Import your pages
import 'Homepage.dart';
import 'text.dart';
import 'saved.dart';
import 'profile.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [HomePage(), Textscreen(), Saved(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true, 
      body: Stack(
        children: [
          _screens[_selectedIndex],

          Positioned(
            left: 0,
            right: 0,
            bottom: 15, 
            child: Center(
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                  color: AppColor.secondarycolor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTabIcon(Icons.home, 0),
                      _buildTabIcon(Icons.search, 1),
                      _buildTabIcon(Icons.bookmark, 2),
                      _buildTabIcon(Icons.person, 3),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabIcon(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.white.withOpacity(0.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icon,
          size: 26,
          color: isSelected ? Colors.white : AppColor.textColor,
        ),
      ),
    );
  }
}
