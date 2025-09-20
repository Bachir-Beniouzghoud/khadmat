import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/Controler/MassegsControler.dart';
import 'package:khadamat/Viwe/Widget/Massege/ContainerMassege.dart';

class Massege extends StatelessWidget {
  Massege({super.key});
  //add obs lasting the data
  Massegscontroler Controler = Get.put(Massegscontroler());
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    MassegeCoustumer widget = MassegeCoustumer(h: h, w: w);

    return Scaffold(
      backgroundColor: AppColors.ScafoldColor,
      appBar: AppBar(
        elevation: 8,
        shadowColor: AppColors.ScafoldColor,
        centerTitle: true,
        title: Row(
          spacing: 10,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  maxRadius: 17,
                  backgroundImage: AssetImage(
                    "${dataStatic.urlimge}/Persion.jpg", //image Tasteng the image Real get from data base
                  ),
                  foregroundColor: Colors.green,
                ),
                Positioned(
                  bottom: 2,
                  right: 2,
                  child: Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Username ",
              style: themeArabic.textTheme.headlineLarge?.copyWith(
                color: Colors.primaries.last,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: Controler.scrollcontroler,
              itemCount: Controler.Masseges_Test.length,
              itemBuilder: (context, index) {
                return Column(children: [widget.Massege(index)]);
              },
            ),
          ),
          widget.InputText(),
        ],
      ),
    );
  }
}
