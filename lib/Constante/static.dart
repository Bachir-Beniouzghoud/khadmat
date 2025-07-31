import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Viwe/Screan/Home.dart';
import 'package:khadamat/data/model/onBordingModle.dart';

class dataStatic {
  static String Alexandria = "Alexandria";
  static String Alnaseeb = "Alnaseeb";
  static const String urlimge = "assets/images";
  List<onBordingModle> onBordinglist = [
    onBordingModle(title: "1".tr, body: "2".tr, urlimage: "$urlimge/img1.jpg"),
    onBordingModle(title: "3".tr, body: "4".tr, urlimage: "$urlimge/img2.jpg"),
  ];
  static void ShowMassegsSnakPar(String titel, String Massege) {
    Get.snackbar(titel, Massege, backgroundColor: AppColors.red);
  }

  static final List<Widget> Scren = [
    Home(),
    Center(child: Text("Text Tow ")),
    Center(child: Text("Text 3")),
    Center(child: Text("Text 4")),
  ];
  static String TextExmple =
      "اذل كنت نحتاج الى عدد كبير من الفقرات يتيح لك مولد النص العربي ";
}
