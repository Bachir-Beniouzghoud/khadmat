import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/Controler/ChatControler.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  Chatcontroler Controler = Get.put(Chatcontroler());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // padding: EdgeInsets.all(5),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Container(
          // color: AppColors.ScafoldColor,
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: InkWell(
            onTap: () => Controler.getToMasseg(),
            child: Row(
              spacing: 8,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      maxRadius: 15,
                      backgroundImage: AssetImage(
                        "${dataStatic.urlimge}/Persion.jpg",
                      ),
                      foregroundColor: Colors.green,
                    ),
                    Positioned(
                      bottom: 2,
                      right: 2,
                      child: Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 1),
                        ),
                      ),
                    ),
                  ],
                ),
                // Text(
                //   "Username $index",
                //   style: themeArabic.textTheme.headlineLarge,
                // ),
                Expanded(
                  child: ListTile(
                    subtitle: Row(
                      children: [Text("سلام عليكم "), Text("21:50")],
                    ), //Laste Massege in get form Data Base
                    title: Text(
                      "Username$index",
                      style: TextStyle(fontSize: 20),
                    ), //Get Username fromm Data Base
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
