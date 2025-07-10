import 'package:flutter/material.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';

class Coustombutton extends StatelessWidget {
  Coustombutton({
    super.key,
    required this.onPressed,
    required this.TitleButton,
  });
  Function() onPressed;
  String TitleButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: themeArabic.elevatedButtonTheme.style?.copyWith(
        backgroundColor: WidgetStateProperty.all(AppColors.ButtonColor),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        TitleButton,
        style: themeArabic.textTheme.headlineLarge?.copyWith(
          color: AppColors.white,
          fontSize: 23,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
