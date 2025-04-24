import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PTextTheme {
  static TextTheme light = TextTheme(
    titleLarge
        : GoogleFonts.poppins(color: Colors.black54, fontSize: 24),
    headlineLarge: GoogleFonts.montserrat(color: Colors.black87),
  );
  static TextTheme dark = TextTheme(
    titleSmall: GoogleFonts.poppins(color: Colors.white60, fontSize: 24),
    headlineMedium: GoogleFonts.montserrat(color: Colors.white70),
  );
}
