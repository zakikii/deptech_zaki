import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'my_typography.dart';
part 'material_color_generator.dart';

class MyTheme {
  Color green = const Color(0xFF1A6E35);

  Color orange = const Color(0xFFEA8724);

  Color white = const Color(0xFFFFFFFF);

  Color black = const Color(0xFF1F1F1F);

  Color grey = const Color(0xFFD9D9D9);

  Color lightGrey = const Color(0xFFB4C8C5);

  Color darkGrey = const Color(0xFF66696D);

  Gradient sliderIndicator = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF66DCB8), Color(0xFF29B289)],
  );

  MaterialColor primarySwatch = _generateMaterialColor(const Color(0xFF1A6E35));

  MaterialColor secondarySwatch =
      _generateMaterialColor(const Color(0xFFEA8724));

  MyTypography typographyRegular = MyTypography(
    headingLarge:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 48),
    headingMedium:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 32),
    headingSmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 24),
    bodyLarge: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18),
    bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
    bodySmall: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14),
    bodyExtraSmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12),
  );

  MyTypography typographyLight = MyTypography(
    headingLarge:
        GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 48),
    headingMedium:
        GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 32),
    headingSmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 24),
    bodyLarge: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 18),
    bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 16),
    bodySmall: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 14),
    bodyExtraSmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 12),
  );

  MyTypography typographyBold = MyTypography(
    headingLarge: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 48,
    ),
    headingMedium:
        GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 32),
    headingSmall: GoogleFonts.poppins(
        fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white),
    bodyLarge: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18),
    bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),
    bodySmall: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
    bodyExtraSmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 12),
  );

  ThemeData buildTheme(BuildContext context) {
    return ThemeData(
      primarySwatch: primarySwatch,
      scaffoldBackgroundColor: white,
      appBarTheme: AppBarTheme(
        backgroundColor: primarySwatch,
        foregroundColor: black,
        shadowColor: grey,
        elevation: 0.5,
        titleTextStyle: typographyBold.bodyLarge.copyWith(color: white),
      ),
    );
  }
}
