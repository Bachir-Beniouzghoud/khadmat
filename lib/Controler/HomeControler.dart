import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Homecontroler extends GetxController {
  late RxInt selectedIndex;
  late Rx<ScrollController> scrollController;
  late RxList locations;
  List<String> categories = [
    "30".tr,
    "Hotels",
    "Homes & Stays",
    "Chalets",
    "Huts & Tents",
  ];
  RxString SelectitmeCategory = "30".tr.obs;

  @override
  void onInit() {
    selectedIndex = 0.obs;
    locations =
        [
          {'code': '36', 'name': 'Tarf'},
          {'code': '02', 'name': 'Chlef'},
          {'code': '03', 'name': 'Laghouat'},
          {'code': '04', 'name': 'Oum El Bouaghi'},
          {'code': '05', 'name': 'Batna'},
          {'code': '06', 'name': 'Béjaïa'},
          {'code': '07', 'name': 'Biskra'},
          {'code': '08', 'name': 'Béchar'},
          {'code': '09', 'name': 'Blida'},
        ].obs;
    scrollController = ScrollController().obs;
    super.onInit();
  }

  @override
  void onClose() {
    selectedIndex.close();
    // TODO: implement onClose
    super.onClose();
  }
}
