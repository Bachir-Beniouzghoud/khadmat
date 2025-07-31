import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Controler/HomeControler.dart';

class CustumbuttonSelctedWilaya extends StatelessWidget {
  CustumbuttonSelctedWilaya({super.key});
  Homecontroler Cnt = Get.put(Homecontroler());

  @override
  Widget build(BuildContext context) {
    return Card(
   
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.yellowAccent,
      child: IconButton(
        onPressed: () {
          print("Wilai selcted ${Cnt.locations[Cnt.selectedIndex.value]}");
        },
        icon: Icon(Icons.keyboard_double_arrow_right, size: 40),
      ),
    );
  }
}
