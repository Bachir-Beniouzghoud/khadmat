import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';

// ignore: must_be_immutable
class Textformfilde extends StatelessWidget {
  Textformfilde({
    super.key,
    required this.controller,
    required this.Icon,
    this.obscureText,
    required this.HintText,
  });
  bool? obscureText;
  TextEditingController controller;
  String HintText;
  Widget Icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      margin: EdgeInsets.all(8),
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        style: themeArabic.textTheme.headlineLarge?.copyWith(
          color: AppColors.Black,
          fontWeight: FontWeight.normal,
        ),
        // ////////Input Decoration ///////////////////
        decoration: InputDecoration(
          suffixIcon: Icon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 17,
          ),
          // Out Lane Input Border /////////////////
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.Black, width: 32.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          hintText: HintText,

          //out laine Input Border ////////
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: AppColors.blou),
          ),
          hintStyle: themeArabic.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w100,
            fontSize: 15,
          ),
        ),

        // fain Input Dection ////////
      ),
    );
  }
}
