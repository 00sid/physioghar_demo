import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.mainBg,

    // --------------------------------
    // Global color scheme
    // --------------------------------
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: Colors.white,
      error: AppColors.error,
    ),

    // --------------------------------
    // Global text theme
    // --------------------------------
    // Use case:
    //     Text(
    //   'Patients',
    //   style: Theme.of(context).textTheme.headlineLarge,
    // )
    // textTheme: TextTheme(
    //   displayLarge: GoogleFonts.fraunces(
    //     color: AppColors.primaryText,
    //     fontWeight: FontWeight.w700,
    //   ),

    //   displayMedium: GoogleFonts.fraunces(
    //     color: AppColors.primaryText,
    //     fontWeight: FontWeight.w700,
    //   ),

    //   headlineLarge: GoogleFonts.fraunces(
    //     color: AppColors.primaryText,
    //     fontWeight: FontWeight.w700,
    //   ),

    //   headlineMedium: GoogleFonts.fraunces(
    //     color: AppColors.primaryText,
    //     fontWeight: FontWeight.w700,
    //   ),

    //   titleLarge: GoogleFonts.fraunces(
    //     color: AppColors.primaryText,
    //     fontWeight: FontWeight.w700,
    //   ),

    //   titleMedium: GoogleFonts.inter(
    //     color: AppColors.primaryText,
    //     fontWeight: FontWeight.w600,
    //   ),

    //   bodyLarge: GoogleFonts.inter(
    //     color: AppColors.primaryText,
    //     fontSize: 16.spMin,
    //   ),

    //   bodyMedium: GoogleFonts.inter(
    //     color: AppColors.secondaryText,
    //     fontSize: 14.spMin,
    //   ),

    //   bodySmall: GoogleFonts.inter(
    //     color: AppColors.mutedText,
    //     fontSize: 12.spMin,
    //   ),

    //   labelLarge: GoogleFonts.inter(
    //     color: Colors.white,
    //     fontWeight: FontWeight.w600,
    //   ),

    //   labelMedium: GoogleFonts.inter(
    //     color: AppColors.secondaryText,
    //     fontWeight: FontWeight.w600,
    //   ),
    // ),

    // --------------------------------
    // AppBar
    // --------------------------------
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.mainBg,
      foregroundColor: AppColors.primaryText,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.fraunces(
        fontSize: 24.spMin,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryText,
      ),
    ),

    // --------------------------------
    // Elevated Button
    // --------------------------------
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryCTA,
        foregroundColor: Colors.white,
        elevation: 0,
        minimumSize: const Size(44, 44),
        shape: const StadiumBorder(),
        textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
      ),
    ),

    // --------------------------------
    // Input fields
    // --------------------------------
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.neutralBg,

      hintStyle: GoogleFonts.inter(
        color: AppColors.mutedText,
        fontSize: 14.spMin,
      ),

      labelStyle: GoogleFonts.inter(color: AppColors.secondaryText),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.spMin),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.spMin),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.spMin),
        borderSide: const BorderSide(color: AppColors.secondary, width: 1.2),
      ),
    ),

    // --------------------------------
    // Icon theme
    // --------------------------------
    iconTheme: const IconThemeData(color: AppColors.secondaryText),
  );
}
