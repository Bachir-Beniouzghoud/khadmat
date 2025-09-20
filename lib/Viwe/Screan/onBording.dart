import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Controler/onBordingControler.dart';
import 'package:khadamat/Viwe/Widget/onBording/costomBottum.dart';
import 'package:khadamat/Viwe/Widget/onBording/costomControler.dart';
import 'package:khadamat/Viwe/Widget/onBording/costomSlaider.dart';

class onBording extends StatelessWidget {
  onBording({super.key});
  onBordingControlerImp Controler = Get.put(onBordingControlerImp());

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    print("w$w");
    print("h$h");
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ScafoldColor,
        body: Column(
          children: [
            Expanded(flex: 5, child: costomSlider()),
          
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: h * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    costomBottum(
                      title: "6".tr,
                      onPressed: () => Controler.login(),
                    ),
                    costomBottum(
                      title: "5".tr,
                      onPressed: () => Controler.sinup(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
