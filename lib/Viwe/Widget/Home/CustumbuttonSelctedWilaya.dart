import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Controler/HomeControler.dart';

class CustumbuttonSelctedWilaya extends StatelessWidget {
  CustumbuttonSelctedWilaya({super.key, required this.Cnt});
  Homecontroler Cnt;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.amber,
      child: IconButton(
        onPressed: () {
          print(
            "Wilai selcted ${Cnt.locations[Cnt.selectedIndex.value]}",
          ); // addfunction go to services contry Selected
        },
        icon: Icon(Icons.keyboard_double_arrow_right, size: 40),
      ),
    );
  }
}
