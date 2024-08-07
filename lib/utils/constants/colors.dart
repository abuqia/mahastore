import 'package:flutter/material.dart';

class MahaColors {
  MahaColors._();

  // App basic colors
  static const Color primary = Color(0xFFE118D1);
  static const Color secondary = Color(0xFF00C5AD);
  static const Color accent = Color(0xFF28536B);

  // OnBoarding background color 
  static const Color onBoardingColor1 = Color(0xFF75AEDE);
  static const Color onBoardingColor2 = Color(0xFF71C3C9);
  static const Color onBoardingColor3 = Color(0xFFF0F9FA);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ]
  );

  // Text colors
  static const Color textPrimary = Color(0xFF595959);
  static const Color textSecondary = Color(0xFFadb5bd);
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);
  
  // Background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = MahaColors.white.withOpacity(0.1);
  
  // Button colors
  static const Color buttonPrimary = Color(0xFF00C5AD);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);
  
  // Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);
  
  // Error and validation colors
  static const Color error = Color(0xFFef476f);
  static const Color success = Color(0xFF06d6a0);
  static const Color warning = Color(0xFFffd166);
  static const Color info = Color(0xFF4cc9f0);

  // Neutral shades
  static const Color black = Color(0xFF212529);
  static const Color darkerGrey = Color(0xFF343a40);
  static const Color darkGrey = Color(0xFF495057);
  static const Color grey = Color(0xFF6c757d);
  static const Color softGrey = Color(0xFFadb5bd);
  static const Color lightGrey = Color(0xFFced4da);
  static const Color white = Color(0xFFf8f9fa);

}