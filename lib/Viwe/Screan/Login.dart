import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Controler/LoginControler.dart';
import 'package:khadamat/Viwe/Widget/CoustomButton.dart';
import 'package:khadamat/Viwe/Widget/Login/CoustemTextCreatCount.dart';
import 'package:khadamat/Viwe/Widget/Login/CoustomRow.dart';
import 'package:khadamat/Viwe/Widget/TextFormFilde.dart';
import 'package:khadamat/Viwe/Widget/Login/Title.dart';

class Login extends StatelessWidget {
  Login({super.key});
  Logincontroler Controller = Get.put(Logincontroler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.ScafoldColor,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tetle(),
              const SizedBox(height: 40),
              // Obx(
              //   () =>
              Textformfilde(
                controller: Controller.EmailContrler.value,
                Icon: Icon(Icons.mail, color: AppColors.blou),
                HintText: "8".tr,
              ),
              // ),
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
              SizedBox(height: 10),
              Obx(
                () => Coustomrow(
                  Chek: "11".tr,
                  ForgetPassword: "10".tr,
                  onPressed: Controller.GetToForgetPassword,
                  onChanged: (IsBool) => Controller.IsChke.value = IsBool,
                  Ischeck: Controller.IsChke.value,
                ),
              ),
              SizedBox(height: 10),
              Coustombutton(onPressed: Controller.login, TitleButton: "6".tr),
              SizedBox(height: 85),
              Coustemtextcreatcount(
                CreatCount: "5".tr,
                Qustioncount: "12".tr,
                onPressed: Controller.GetToSignUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
