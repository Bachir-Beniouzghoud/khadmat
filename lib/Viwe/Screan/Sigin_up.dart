import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Controler/SignUpController.dart';
import 'package:khadamat/Viwe/Widget/CoustomButton.dart';
import 'package:khadamat/Viwe/Widget/Login/CoustemTextCreatCount.dart';
import 'package:khadamat/Viwe/Widget/TextFormFilde.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  Signupcontroller Controller = Get.put(Signupcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.ScafoldColor,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            // spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 180),
                child: Text("5".tr, style: themeArabic.textTheme.titleLarge),
              ),
              const SizedBox(height: 40),
              // Obx(
              //   () =>
              //Text filde Username
              Textformfilde(
                controller: Controller.UsernameContrler.value,
                Icon: Icon(Icons.person, color: AppColors.blou),
                HintText: "16".tr,
              ),
              // ),
              // SizedBox(height: 6),
              //------------------------------Text filed Email----------------------------
              // **************************************************************************
              Textformfilde(
                controller: Controller.EmailContrler.value,
                Icon: Icon(Icons.mail, color: AppColors.blou),
                HintText: "8".tr,
              ),
              // ),
              // SizedBox(height: 6),
              //--------------------------------Text filde Password----------------------
              // **************************************************************************
              Obx(
                () => Textformfilde(
                  controller: Controller.PasswordContrler.value,
                  obscureText: Controller.PasswordViseble.value,
                  Icon: IconButton(
                    onPressed: Controller.VisibilityPassword,
                    icon: Icon(
                      Controller.PasswordViseble.isFalse
                          ? Icons.visibility
                          : Icons.visibility_off,
                      size: 25.0,
                      color: AppColors.blou,
                    ),
                  ),

                  HintText: "9".tr,
                ),
              ),
              // SizedBox(height: 6),
              //------------------------------- Text Filde Confirme Password----------------
              // **************************************************************************
              Obx(
                () => Textformfilde(
                  controller: Controller.ConfermePasswordContrler.value,
                  obscureText: Controller.ConfermePasswordViseble.value,
                  Icon: IconButton(
                    onPressed: Controller.VisibilityConfirmPassword,
                    icon: Icon(
                      Controller.ConfermePasswordViseble.isFalse
                          ? Icons.visibility
                          : Icons.visibility_off,
                      size: 25.0,
                      color: AppColors.blou,
                    ),
                  ),

                  HintText: "9".tr,
                ),
              ),
              SizedBox(height: 10),

              ///------------Button Sign Up
              Coustombutton(onPressed: Controller.Signup, TitleButton: "5".tr),
              SizedBox(height: 50),
              Coustemtextcreatcount(
                CreatCount: "6".tr,
                Qustioncount: "15".tr,
                onPressed: Controller.GetToLogin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
