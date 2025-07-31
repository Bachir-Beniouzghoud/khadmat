import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:get/state_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/static.dart';
// flutter pub add salomon_bottom_bar
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Swich extends StatelessWidget {
  RxInt Index = 0.obs;
  Swich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Card(
          elevation: 20,
          color: AppColors.ScafoldColor,
          child: SalomonBottomBar(
            // curve: Curves.fastOutSlowIn,
            items: [
              // Hom Page
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  "20".tr,
                  style: TextStyle(fontFamily: dataStatic.Alexandria),
                ),
                selectedColor: Colors.blueGrey,
              ),
              // page map
              SalomonBottomBarItem(
                icon: Icon(Icons.location_on_rounded),
                title: Text(
                  "21".tr,
                  style: TextStyle(fontFamily: dataStatic.Alexandria),
                ),
                selectedColor: Colors.green,
              ),

              // Page Masseges
              SalomonBottomBarItem(
                icon: Icon(Icons.mail),
                title: Text(
                  "22".tr,
                  style: TextStyle(fontFamily: dataStatic.Alexandria),
                ),
                selectedColor: Colors.orange,
              ),
              // Page Profaile
              SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text(
                  "23".tr,
                  style: TextStyle(fontFamily: dataStatic.Alexandria),
                ),
                selectedColor: Colors.teal,
              ),
            ],
            backgroundColor: Colors.transparent,
            currentIndex: Index.value,
            onTap: (p0) {
              Index.value = p0;
            },
          ),
        ),
      ),

      body: Obx(() {
        return dataStatic.Scren[Index.value];
      }),
    );
  }
}
