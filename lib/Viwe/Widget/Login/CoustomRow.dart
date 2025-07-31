import 'package:flutter/material.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';

class Coustomrow extends StatelessWidget {
  Coustomrow({
    super.key,
    required this.ForgetPassword,
    required this.onPressed,
    required this.onChanged,
    required this.Ischeck,  
    required this.Chek,
  });
  Function() onPressed;
  Function(bool IsBool) onChanged;
  String ForgetPassword;
  String Chek;
  bool Ischeck;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            ForgetPassword,
            style: themeArabic.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // SizedBox(width: 50),
        Row(
          children: [
            Text(
              Chek,
              style: themeArabic.textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Checkbox(
              value: Ischeck,
              activeColor: AppColors.blou,
              onChanged: (IsBool) => onChanged(IsBool!),
            ),
          ],
        ),
      ],
    );
  }
}
