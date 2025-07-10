import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Local/Local.dart';
import 'package:khadamat/Viwe/Screan/Forget_Password.dart';
import 'package:khadamat/Viwe/Screan/Swich.dart';
import 'package:khadamat/Viwe/Screan/Login.dart';
import 'package:khadamat/Viwe/Screan/Sigin_up.dart';
import 'package:khadamat/Viwe/Screan/onBording.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [...DevicePreview.defaultTools],
      builder: (context) => const MyApp(),
    ),
  );
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      title: 'Khadamte',
      translations: MyLocal(),
      theme: themeArabic,
      initialRoute: "/Swich",
      getPages: [
        GetPage(name: "/", page: () => onBording()),
        GetPage(name: "/Swich", page: () => Swich()),
        GetPage(name: "/Login", page: () => Login()),
        GetPage(name: "/ForgetPassword", page: () => ForgetPassword()),
        GetPage(name: "/SignUp", page: () => SignUp()),
      ],
      // darkTheme: ThemeData.dark(),
      // highContrastTheme: ThemeData.light(),
      // themeMode: ThemeMode.system,
      home: onBording(),
    );
  }
}
