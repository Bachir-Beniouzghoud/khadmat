import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Controler/HomeControler.dart';

class ListWheelScrool extends StatelessWidget {
  ListWheelScrool({super.key, required this.Controler});

  Homecontroler Controler;

  @override
  Widget build(BuildContext context) {
    return Card(
      // height: 90,
      // elevation: 10,
      // shadowColor: AppColors.Black,
      margin: const EdgeInsets.only(left: 15),
      color: Colors.amber,
      child: SizedBox(
        height: 90,
        child: ListWheelScrollView.useDelegate(
          // shrinkWrap: true,
          itemExtent: 30,
          diameterRatio: 1.5,
          perspective: 0.005,
          physics: FixedExtentScrollPhysics(),
          onSelectedItemChanged: (index) {
            Controler.selectedIndex.value = index;
          },
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              (index == Controler.selectedIndex.value);
              return (Controler.locations.isNotEmpty &&
                      !(index < 0 || index >= Controler.locations.length))
                  ? Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${Controler.locations[index]["code"]} ",
                          style: themeArabic.textTheme.headlineLarge?.copyWith(
                            color:
                                Controler.selectedIndex.value == index
                                    ? AppColors.Black
                                    : AppColors.blou,
                            fontSize:
                                Controler.selectedIndex.value == index
                                    ? 25
                                    : 10,
                          ),
                        ),
                        Text(
                          "-",
                          style: themeArabic.textTheme.headlineLarge?.copyWith(
                            color:
                                Controler.selectedIndex.value == index
                                    ? AppColors.Black
                                    : AppColors.blou,
                            fontSize:
                                Controler.selectedIndex.value == index
                                    ? 25
                                    : 10,
                          ),
                        ),
                        Text(
                          "${Controler.locations[index]["name"]}",
                          style: themeArabic.textTheme.headlineLarge?.copyWith(
                            color:
                                Controler.selectedIndex.value == index
                                    ? AppColors.Black
                                    : AppColors.blou,
                            fontSize:
                                Controler.selectedIndex.value == index
                                    ? 20
                                    : 10,
                          ),
                        ),
                      ],
                    ),
                  )
                  : null;
            },
          ),
        ),
      ),
    );
  }
}
