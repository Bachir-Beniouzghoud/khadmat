import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Viwe/Widget/Massegs/Chat.dart';

class ScrinMassegs extends StatelessWidget {
  const ScrinMassegs({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldColor,
      appBar: AppBar(
        elevation: 4,
        shadowColor: AppColors.ScafoldColor,
        backgroundColor: AppColors.ScafoldColor,
        title: Text(
          "28".tr,
          style: themeArabic.textTheme.headlineLarge?.copyWith(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Chat(),
    );
  }
}
