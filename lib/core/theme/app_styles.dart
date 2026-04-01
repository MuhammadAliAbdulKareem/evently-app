import 'package:evently_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle poppins64Bold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 64),
      fontWeight: FontWeight.bold,
      height: 38 / 64, // ~0.59
    );
  }

  static TextStyle jockeyOne36(BuildContext context) {
    return GoogleFonts.jockeyOne(
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontWeight: FontWeight.normal,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  static TextStyle poppins36(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontWeight: FontWeight.normal,
      height: 38 / 36, // ~1.05
    );
  }

  static TextStyle inter24(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle roboto22(BuildContext context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.normal,
      height: 28 / 22, // ~1.27
    );
  }

  static TextStyle inter20(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle inter20Thin(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight
          .w400, // Assuming "Thin" implies 83% line height context but usually weight. Kept normal weight unless specified.
      height: 0.83,
    );
  }

  static TextStyle inter20Large(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.normal,
      height: 1.4,
    );
  }

  static TextStyle inter16(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle sfPro14(BuildContext context) {
    // SF Pro isn't in Google Fonts. Fallback to default or specify family.
    return TextStyle(
      fontFamily: 'SF Pro Display',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle inter14(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle inter14Thin(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.normal,
      height: 0.83,
    );
  }

  static TextStyle inter14Large(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.normal,
      height: 1.4,
    );
  }

  static TextStyle inter12Large(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.normal,
      height: 1.4,
    );
  }
}
