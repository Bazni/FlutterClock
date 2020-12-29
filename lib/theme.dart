import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: primaryColor,
    accentColor: accentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: secondaryLightColor,
      // on light theme surface = Colors.white by default
    ),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: bodyTextColorLight),
    accentIconTheme: IconThemeData(color: accentIconLightColor),
    primaryIconTheme: IconThemeData(color: primaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: bodyTextColorLight),
      bodyText2: TextStyle(color: bodyTextColorLight),
      headline4: TextStyle(color: titleTextLightColor, fontSize: 32),
      headline1: TextStyle(color: titleTextLightColor, fontSize: 80),
    ),
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    accentColor: accentDarkColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    colorScheme: ColorScheme.light(
      secondary: secondaryDarkColor,
      surface: surfaceDarkColor,
    ),
    backgroundColor: backgroundDarkColor,
    iconTheme: IconThemeData(color: bodyTextColorDark),
    accentIconTheme: IconThemeData(color: accentIconDarkColor),
    primaryIconTheme: IconThemeData(color: primaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: bodyTextColorDark),
      bodyText2: TextStyle(color: bodyTextColorDark),
      headline4: TextStyle(color: titleTextDarkColor, fontSize: 32),
      headline1: TextStyle(color: titleTextDarkColor, fontSize: 80),
    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
