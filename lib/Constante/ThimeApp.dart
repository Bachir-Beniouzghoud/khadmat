import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/static.dart';

TextTheme TextThem = TextTheme(
  titleLarge: TextStyle(
    fontSize: 90,
    fontFamily: dataStatic.Alnaseeb,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 7, 36, 72),
  ),
  // hint Style
  labelLarge: TextStyle(
    fontSize: 15,
    fontFamily: dataStatic.Alexandria,
    fontWeight: FontWeight.w100,
    color: const Color.fromARGB(97, 61, 60, 60),
  ),

  bodyLarge: TextStyle(
    fontSize: 28,
    fontFamily: dataStatic.Alexandria,
    fontWeight: FontWeight.bold,
    color: AppColors.blou,
  ),
  headlineLarge: TextStyle(
    fontSize: 18,
    fontFamily: dataStatic.Alexandria,
    color: AppColors.blou,
    // fontWeight: FontWeight.bold,
  ),
);
// ElevatedButtonThemeData
ElevatedButtonThemeData EButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    textStyle: TextStyle(
      color: AppColors.white,
      fontFamily: dataStatic.Alexandria,
      fontSize: 18,
    ),
    backgroundColor: AppColors.blou,
    foregroundColor: AppColors.white,
  ),
);
//Button Theme

ButtonThemeData ButtonThem = ButtonThemeData(
  buttonColor: AppColors.blou,
  textTheme: ButtonTextTheme.accent,
);
// ---------------------------------------------------------------------
//------------------------------------Theme App-------------------------
// --------------------------------------------------------------------------
ThemeData themeArabic = ThemeData(
  elevatedButtonTheme: EButtonTheme,
  textTheme: TextThem,
  buttonTheme: ButtonThem,
  scaffoldBackgroundColor: AppColors.ScafoldColor,
  shadowColor: AppColors.Shadowcolor,
);
