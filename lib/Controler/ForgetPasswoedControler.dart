import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khadamat/Viwe/Screan/Forget_Password.dart';

class FPController extends GetxController {
  late Rx<TextEditingController> FPControler;
  @override
  void dispose() {
    FPControler.close(); // TODO: implement dispose
    super.dispose();
  }

  @override
  void onInit() {
    FPControler = TextEditingController().obs;
    // TODO: implement onInit
    super.onInit();
  }
  ForgetPassword(){}
}
