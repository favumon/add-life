import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData brandTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.white,
        actionsIconTheme: IconThemeData(color: Colors.black54)),
    textTheme: TextTheme(
        subtitle1: GoogleFonts.raleway(),
        headline1: GoogleFonts.raleway(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black87),
        headline2: GoogleFonts.raleway(fontSize: 30.0, color: Colors.black87),
        headline3: GoogleFonts.raleway(fontSize: 22.0, color: Colors.black87),
        headline4: GoogleFonts.raleway(fontSize: 18.0, color: Colors.black87),
        bodyText1: GoogleFonts.raleway(fontSize: 16.0, color: Colors.black87),
        bodyText2: GoogleFonts.raleway(fontSize: 14.0, color: Colors.black87)),
    inputDecorationTheme: InputDecorationTheme(
        labelStyle: GoogleFonts.raleway(),
        hintStyle: TextStyle(color: Colors.black54)));

final List<Color> brandGradient = [Color(0xFF667EEA), Color(0xFF64B6FF)];
