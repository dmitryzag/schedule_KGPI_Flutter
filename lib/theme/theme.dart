import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeApp = ThemeData(
  cardTheme: const CardTheme(color: Colors.white),
  scaffoldBackgroundColor: Color.fromARGB(255, 238, 238, 238),
  textTheme: TextTheme(
      labelLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(139, 0, 0, 0).withOpacity(0.9)),
      labelMedium: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.7)),
      bodyLarge: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
      bodyMedium: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500)),
  colorScheme:
      ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 100, 252, 216)),
  useMaterial3: true,
);
