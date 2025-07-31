import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:khadamat/Constante/static.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ), //add fonction search
        IconButton(onPressed: () {}, icon: Icon(Icons.notification_add_sharp)),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("24".tr),
              Text("Username"), //name the user get for Api
              SizedBox(width: w * 0.03),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: w * 0.05,
                backgroundImage: AssetImage(
                  "${dataStatic.urlimge}/Persion.jpg",
                ), // if Netowrk Exist using IMge profaile or image Pesion
              ),
            ],
          ),
        ),
      ],
    );
  }
}
