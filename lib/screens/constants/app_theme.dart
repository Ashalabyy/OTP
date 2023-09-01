import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

// LightTheme
ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.grey,
    fontFamily: GoogleFonts.nunito().fontFamily,
    textTheme: textTheme(),
    primaryColor: primaryColor,
    elevatedButtonTheme: elevateButtom(),
  );
}

// Text Theme
TextTheme textTheme() {
  return const TextTheme(
    headline2: bodysmall2,
    bodyText1: bodyText1,
    bodyText2: bodyText2,
    headline1: headline,
  );
}

// ElevatedButton Theme
ElevatedButtonThemeData elevateButtom() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: lightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      minimumSize: const Size(double.infinity, 40),
      elevation: 0,
    ),
  );
}
