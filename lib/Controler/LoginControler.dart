import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' show get;
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/Viwe/Screan/Login.dart';
import 'package:khadamat/data/api/end_Point.dart';
import 'package:khadamat/data/api/http_consomer.dart';

class Logincontroler extends GetxController {
  late Rx<TextEditingController> EmailContrler;
  late Rx<TextEditingController> PasswordContrler;
  late RxBool PasswordViseble;
  late RxBool IsChke;

  @override
  void dispose() {
    PasswordViseble.close();
    IsChke.close();
    EmailContrler.dispose();
    PasswordContrler.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    PasswordViseble = false.obs;
    IsChke = false.obs;
    EmailContrler = TextEditingController().obs;
    PasswordContrler = TextEditingController().obs;

    super.onInit();
  }

  ///Get To Page Forget Password
  GetToForgetPassword() {
    Get.toNamed("/ForgetPassword");
  }

  // Get to Sign up
  GetToSignUp() {
    Get.toNamed("/SignUp");
  }

  //Fonction Visiblety Passsword
  VisibilityPassword() => PasswordViseble.value = !PasswordViseble.value;
  // Login
  login() async {
    var resoulta = await HttpConsomer().post(
      EndPoint.SignIn,
      data: {
        "password": PasswordContrler.value.text,
        "Email": EmailContrler.value.text,
      },
    );
    if (resoulta != null) {
        // add information in login to sherd Prefrence 
      // dataStatic.ShowMassegsSnakPar("18".tr, "vrey good ");
        Get.offAllNamed("/Swich");
    }
  }
}

extension on Rx<TextEditingController> {
  void dispose() {}
}
