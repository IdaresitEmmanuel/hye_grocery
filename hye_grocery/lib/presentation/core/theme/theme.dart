import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class HThemeData {
  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFFB6400),
        cardColor: const Color(
            0xFF4A4A5B), //this will be used as button color since the original has been deprecated
        iconTheme: const IconThemeData(color: Color(0xFFE4E1E1)),
        buttonTheme: const ButtonThemeData(buttonColor: Color(0xFF7E7979)),
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF212121),
        dividerColor: const Color(0xFF696D77),
        canvasColor: Colors.transparent,
        scaffoldBackgroundColor: const Color(0xFF37374A),
        textTheme: GoogleFonts.nunitoTextTheme(),
      );

  static ThemeData get lightTheme => ThemeData(
        primaryColor: HColors.primaryColor,
        cardColor: HColors.cardColor,
        iconTheme: IconThemeData(color: HColors.iconColor),
        buttonTheme: const ButtonThemeData(buttonColor: Color(0xFFF5F1F1)),
        brightness: Brightness.light,
        backgroundColor: const Color(0xFFE5E5E5),
        dividerColor: HColors.dividerColor,
        canvasColor: Colors.transparent,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        fontFamily: "Nunito",
        primaryTextTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: HDimensions.headerText, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
            fontSize: HDimensions.bodyTextMedium,
          ),
          bodyLarge: TextStyle(
            fontSize: HDimensions.bodyTextLarge,
          ),
          bodyMedium: TextStyle(
            fontSize: HDimensions.bodyTextMedium,
          ),
          bodySmall: TextStyle(
            fontSize: HDimensions.bodyTextSmall,
          ),
        ),
      );
}
