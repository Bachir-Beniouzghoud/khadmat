import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
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
}
