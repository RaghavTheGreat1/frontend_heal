import 'package:flutter/material.dart';
import 'package:frontend_mental_health/theme/custom_colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: CustomColors.white,
    colorScheme: const ColorScheme.light(
      primary: CustomColors.white,
      secondary: CustomColors.yellow,
    ),
    textTheme: GoogleFonts.dmSansTextTheme(),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((states) => CustomColors.black),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => GoogleFonts.dmSans(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((states) => CustomColors.black),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => CustomColors.yellow),
        padding: MaterialStateProperty.resolveWith(
          (states) => const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => GoogleFonts.dmSans(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
