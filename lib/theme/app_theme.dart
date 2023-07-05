import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme =
      ThemeData(primarySwatch: Colors.blue, textTheme: AppTextTheme.lightTheme);
  static final darkTheme = ThemeData(primarySwatch: Colors.red, textTheme: AppTextTheme.darkTheme);
}

class AppTextTheme {
  static final lightTheme = TextTheme(
    titleLarge:
        GoogleFonts.poppins(color: Colors.white),
  );
  static final darkTheme = TextTheme(
    titleLarge:
    GoogleFonts.poppins(backgroundColor: Colors.white, color: Colors.black),
  );
}
