import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeApp = ThemeData(
  cardTheme: const CardTheme(color: Colors.white),
  scaffoldBackgroundColor: const Color.fromARGB(222, 255, 255, 255),
  textTheme: TextTheme(
      labelMedium: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.7)),
      bodyLarge: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
      bodyMedium: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500)),
  primaryColor: Colors.amber,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
