import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;

  const LogoText({
    super.key,
    required this.text,
    this.color = Colors.deepOrange,
    this.size = 28,  this.weight=FontWeight.w100,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.pacifico(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class RecipeTitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
   final FontWeight weight;

  const RecipeTitleText({
    super.key,
    required this.text,
    this.color = AppColor.textColor,
    this.size = 24,  this.weight=FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.playfairDisplay(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class IngredientText extends StatelessWidget {
  final FontWeight weight;
  final String text;
  final Color color;
  final double size;

  const IngredientText({
    super.key,
    required this.text,
    this.color = AppColor.textColor,
    this.size = 16,
    this.weight=FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontSize: size, color: color, height: 1.4),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;

  const ButtonText({
    super.key,
    required this.text,
    this.color = AppColor.textColor,
    this.size = 16,  this.weight=FontWeight.normal,
    
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
