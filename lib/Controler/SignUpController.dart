import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/data/api/end_Point.dart';
import 'package:khadamat/data/api/http_consomer.dart';

class Signupcontroller extends GetxController {
  late Rx<TextEditingController> EmailContrler;
  late Rx<TextEditingController> PasswordContrler;
  late Rx<TextEditingController> ConfermePasswordContrler;
  late Rx<TextEditingController> UsernameContrler;
  late RxBool PasswordViseble;
  late RxBool ConfermePasswordViseble;

  @override
  void dispose() {
    PasswordViseble.close();
    EmailContrler.dispose();
    ConfermePasswordContrler.dispose();
    ConfermePasswordViseble.close();
    PasswordContrler.dispose();
    UsernameContrler.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    PasswordViseble = false.obs;
    ConfermePasswordViseble = false.obs;
    EmailContrler = TextEditingController().obs;
    PasswordContrler = TextEditingController().obs;
    ConfermePasswordContrler = TextEditingController().obs;
    UsernameContrler = TextEditingController().obs;
    super.onInit();
  }

  // Visiblety Password
  VisibilityConfirmPassword() =>
      ConfermePasswordViseble.value = !ConfermePasswordViseble.value;
  // Visiblety Confirme  Password
  VisibilityPassword() => PasswordViseble.value = !PasswordViseble.value;

  Signup() async {
    if (PasswordContrler.value.text == ConfermePasswordContrler.value.text) {
      var resoulta = await HttpConsomer().post(
        EndPoint.signUp,
        data: {
          "password": PasswordContrler.value.text,
          "Email": EmailContrler.value.text,
          "username": UsernameContrler.value.text,
        },
      );
      print(resoulta);
      if (resoulta != null) {
        // dataStatic.ShowMassegsSnakPar("18".tr, "vrey good ");
        // add information login in sherd Prefrence 
        Get.offAllNamed("/Swich");
      }
    } else {
      dataStatic.ShowMassegsSnakPar("18".tr, "19".tr);
    }
  }

  GetToLogin() {
    Get.toNamed("/Login");
  }
}

extension on Rx<TextEditingController> {
  void dispose() {}
}
