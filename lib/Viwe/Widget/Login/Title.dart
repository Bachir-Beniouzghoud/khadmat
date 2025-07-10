import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:khadamat/Constante/ThimeApp.dart';

class Tetle extends StatelessWidget {
  const Tetle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(top: 250), child: Text("7".tr,style: themeArabic.textTheme.titleLarge,));
  }
}
