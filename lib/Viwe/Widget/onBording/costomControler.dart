import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/Controler/onBordingControler.dart';
import 'package:khadamat/Viwe/Screan/onBording.dart';

class costomControler extends StatelessWidget {
  const costomControler({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<onBordingControlerImp>(
      // init: onBordingControlerImp(),
      builder:
          (controler) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(controler.Lanthpage, (index) {
                return AnimatedContainer(
                  // alignment: AlignmentDirectional(0, 5),
                  
                  duration: const Duration(milliseconds: 800),
                  decoration: BoxDecoration(
                    color: AppColors.blou,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: controler.cruntpage == index ? 19 : 7,
                  height: 6,
                  margin: const EdgeInsets.only(top: 20),
                );
              }),
            ],
          ),
    );
  }
}
