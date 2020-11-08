import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData brandTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    headline1: GoogleFonts.raleway(fontSize: 40.0, fontWeight: FontWeight.bold),
    headline2: GoogleFonts.raleway(fontSize: 30.0),
    headline3: GoogleFonts.raleway(fontSize: 22.0),
    headline4: GoogleFonts.raleway(fontSize: 18.0),
  ),
);

final List<Color> brandGradient = [Color(0xFF667EEA), Color(0xFF64B6FF)];
