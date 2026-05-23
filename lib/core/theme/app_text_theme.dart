import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.plusJakartaSansTextTheme(
    const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w800,
        letterSpacing: -1,
      ),

      displayMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        letterSpacing: -1,
      ),

      headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),

      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),

      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),

      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),

      labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),
  );
}
