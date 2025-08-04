import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';

class Customtextfield extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final Color color;
  const Customtextfield({
    super.key,
    required this.hintText,
    required this.icon, this.color=AppColor.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: icon,
          filled: true,
          fillColor: color,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black54),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
