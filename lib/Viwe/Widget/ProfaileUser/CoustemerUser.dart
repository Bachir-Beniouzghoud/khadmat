import 'package:flutter/material.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Constante/static.dart';

class Coustemeruser {
  late double h, w;

  Coustemeruser({required this.h, required this.w});
  // ignore: non_constant_identifier_names
  Widget ContainerUser() => Center(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      margin: EdgeInsets.only(top: h * 0.04, bottom: 0.04),
      height: h * 0.3,
      width: w * 0.7,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.teal,
            blurRadius: 12, // shadow blur
            offset: Offset(0, 0),
            spreadRadius: 0,
            // shadow position
          ),
        ],
        color: Colors.teal.shade200,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRect(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                "${dataStatic.urlimge}/Persion.jpg", // add image the profail user
              ),
            ),
          ),
          Text(
            "Bachir Beniouzghoud", // get Username in data Base
            style: themeArabic.textTheme.labelLarge?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: h * 0.028,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: h * 0.01),
          Text(
            "Bachir Beniouz@gmail.com",
            style: themeArabic.textTheme.labelLarge?.copyWith(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: h * 0.02,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    ),
  );
  /////////////////////////Build state ///////////////////////////////
  /////////////////////////Build state ///////////////////////////////
  Widget buildState(Widget Lable, String Value) => Column(
    children: [
      Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "200",
              style: themeArabic.textTheme.labelLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w200,
                fontSize: h * 0.015,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            Lable,
          ],
        ),
      ),
      Text(
        Value,
        textAlign: TextAlign.center,
        softWrap: true,
        style: themeArabic.textTheme.labelLarge?.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: h * 0.015,
        ),
      ),
    ],
  );
  Widget buildProfileOption(
    IconData icon,
    Function onTap,
    String title, {
    Color color = Colors.black,
    List<Widget> Childern = const [],
  }) {
    return InkWell(
      onTap: Childern.isEmpty ? onTap() : null,
      child: Card(
        margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ExpansionTile(
          title: Text(
            title,
            style: themeArabic.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: h * 0.015,
            ),
          ),

          enabled: Childern.isEmpty ? false : true,
          leading: Icon(icon, color: color),
          children: Childern,
        ),
      ),
    );
  }
}

//////////////////////////////////////////_buildProfileOption/////////////////////////////////
/*
ListTile(
        title: Text(
          title,
          style: themeArabic.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
            fontSize: h * 0.02,
          ),
        ),
        leading: Icon(icon, size: h * 0.02, color: color),
        trailing: Icon(Icons.arrow_forward_ios, size: h * 0.02, color: color),
      
        onTap: onTap(),)
*/
/*
    ClipRect(
          child: CircleAvatar(
            backgroundImage: AssetImage("${dataStatic.urlimge}/Persion.jpg"),
          ),
        ),
*/
