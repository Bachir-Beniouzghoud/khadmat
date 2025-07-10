import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/Controler/onBordingControler.dart';

class costomSlaider extends GetView<onBordingControlerImp> {
  const costomSlaider({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(onBordingControlerImp());
    return PageView.builder(
      // padEnds: ,
      allowImplicitScrolling: true,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      controller: controller.pageControler,
      itemCount: dataStatic().onBordinglist.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            // add images on Pording
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: Image.asset(dataStatic().onBordinglist[index].urlimage),
            ),
            const SizedBox(height: 50),
            Text(
              dataStatic().onBordinglist[index].title,
              textAlign: TextAlign.center,
              style: themeArabic.textTheme.bodyLarge,
            ),
            const SizedBox(height: 25),
            Text(
              dataStatic().onBordinglist[index].body,
              style: themeArabic.textTheme.headlineLarge,
            ),
          ],
        );
      },
    );
  }
}
