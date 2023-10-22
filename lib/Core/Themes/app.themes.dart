import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  MyTheme._();

  static final light = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
    useMaterial3: true,
  );
}
