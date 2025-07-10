import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Controler/ForgetPasswoedControler.dart';
import 'package:khadamat/Viwe/Widget/CoustomButton.dart';
import 'package:khadamat/Viwe/Widget/TextFormFilde.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  FPController controller = Get.put(FPController());
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        // color: AppColors.ScafoldColor,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: AppColors.ScafoldColor),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: h / 2),
              Text("10".tr, style: themeArabic.textTheme.bodyLarge),
              Text(
                "13".tr,
                style: themeArabic.textTheme.labelLarge?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              Textformfilde(
                controller: controller.FPControler.value,
                Icon: Icon(Icons.mail),
                HintText: "8".tr,
              ),
              SizedBox(height: 20),
              Coustombutton(
                onPressed: controller.ForgetPassword,
                TitleButton: "14".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
