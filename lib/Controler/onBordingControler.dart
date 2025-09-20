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
  RxInt cruntpage = 0.obs;
  int Lanthpage = dataStatic().onBordinglist.length;




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
  
   
 
      cruntpage.value = index;
 
  }
}
