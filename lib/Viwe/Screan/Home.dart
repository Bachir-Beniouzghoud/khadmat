import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Controler/HomeControler.dart';
import 'package:khadamat/Viwe/Widget/Home/AppBar.dart';
import 'package:khadamat/Viwe/Widget/Home/CoustomListWheelScrollView.dart';
import 'package:khadamat/Viwe/Widget/Home/CoustumCategory.dart';
import 'package:khadamat/Viwe/Widget/Home/CoustumShowAllServis.dart';
import 'package:khadamat/Viwe/Widget/Home/CustumbuttonSelctedWilaya.dart';

class Home extends StatelessWidget {
  Home({super.key});
  Homecontroler Controler = Get.put(Homecontroler());
  @override 
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    // تحقق من الاتجاه
    bool isLandscape = orientation == Orientation.portrait;
    print(orientation);
    return Scaffold(
      backgroundColor: AppColors.ScafoldColor,
      body: ListView(
        controller: Controler.scrollController.value,
        physics:
            orientation == Orientation.portrait
                ? NeverScrollableScrollPhysics()
                : AlwaysScrollableScrollPhysics(),
        children: [
          Card(
            // margin: const EdgeInsets.only(top: 25),
            color: AppColors.ScafoldColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Appbar(),
            ),
          ),
          SizedBox(height: 10),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: CustumbuttonSelctedWilaya(),
              ), // add prameter selected
              Expanded(flex: 2, child: ListWheelScrool()),
            ],
          ),
          // Row the Categry Servis
          Container(alignment: Alignment.topCenter, child: Coustumcategory()),
          CoustumShowAllServis(),
          // Show Servis
        ],
      ),
    );
  }
}
