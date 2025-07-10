import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Controler/onBordingControler.dart';
import 'package:khadamat/Viwe/Widget/onBording/costomBottum.dart';
import 'package:khadamat/Viwe/Widget/onBording/costomControler.dart';
import 'package:khadamat/Viwe/Widget/onBording/costomSlaider.dart';

class onBording extends StatelessWidget {
  onBording({super.key});
  onBordingControlerImp Controler = Get.put(onBordingControlerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<onBordingControler>(
        init: Controler,
        builder: (T) {
          return Column(
            children: [
              const SizedBox(height: 35),
              const Expanded(flex: 5, child: costomSlaider()),
              const SizedBox(height: 15),
              const costomControler(),
              Expanded(
                flex: 2,
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
            ],
          );
        },
      ),
    );
  }
}
