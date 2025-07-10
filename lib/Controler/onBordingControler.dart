import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/static.dart';

// ignore: camel_case_types
abstract class onBordingControler extends GetxController {
  next();
  login();
  sinup();
  onPageChanged(int index);
}

// ignore: camel_case_types
class onBordingControlerImp extends onBordingControler {
  int cruntpage = 0;
  // ignore: non_constant_identifier_names
  int Lanthpage = dataStatic().onBordinglist.length;
  late Timer Time;
  final duration = const Duration(seconds: 5);
  late PageController pageControler;
  @override
  void dispose() {
    pageControler.dispose();
    Time.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void onInit() {
    pageControler = PageController();

    // تشغيل التايمر بعد انتهاء البناء
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Time = Timer.periodic(duration, (Timer t) {
        cruntpage = (cruntpage + 1) % Lanthpage;
        // cruntpage++;

        if (pageControler.hasClients) {
          pageControler.animateToPage(
            cruntpage,
            duration: duration,
            curve: Curves.slowMiddle,
          );
        }

        update();
      });

      // cruntpage = 0;
      // pageControler.jumpToPage(0);
    });

    super.onInit();
  }

  @override
  login() {
    Get.offAllNamed("/Login").obs;
  }

  @override
  next() {}

  @override
  sinup() {
    Get.offAllNamed("/SignUp").obs;
  }

  @override
  onPageChanged(int index) {
    cruntpage = index;
    update();
  }
}
