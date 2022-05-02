import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
List<Color> primaryButtonColor = const [
  Color.fromRGBO(174, 220, 129, 1),
  Color.fromRGBO(108, 197, 29, 1),
];
List<Color> appBarColor = const [
  Color.fromRGBO(0, 0, 0, 1),
  Color.fromRGBO(0, 0, 0, 0),
];

Color forgotPassColor = const Color.fromRGBO(64, 126, 199, 1);
Color white = const Color(0xffF4F5F9);
Color subtitleColor = const Color(0xff868889);

//Fonts

var primaryFontFamily = GoogleFonts.poppins().fontFamily;

// TextStyles

TextStyle headerTextStyle = TextStyle(
  fontFamily: primaryFontFamily,
  fontWeight: FontWeight.w600,
  fontSize: 25,
  letterSpacing: 0.13,
);

TextStyle subtitleTextStyle = TextStyle(
  fontFamily: primaryFontFamily,
  fontWeight: FontWeight.w400,
  fontSize: 15,
  color: subtitleColor,
  letterSpacing: 0.13,
);
