import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Controler/ControllerProfaile.dart';
import 'package:khadamat/Viwe/Widget/ProfaileUser/CoustemerUser.dart';

class Profaileuser extends StatelessWidget {
  Profaileuser({super.key});
  Controllerprofaile controler = Get.put(Controllerprofaile());
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      /////////////////*************AppBar***********////////////////////////
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: h * 0.09,
        elevation: 3,
        shadowColor: Colors.teal,
        backgroundColor: AppColors.ScafoldColor,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text("23".tr),
        ),
        titleTextStyle: themeArabic.textTheme.titleLarge?.copyWith(
          fontSize: 70,
          color: Colors.teal,
        ),
      ),
      //////////////////////////////Body /////////////////////
      body: Column(
        children: [
          SizedBox(height: 2),
          Coustemeruser(h: h, w: w).ContainerUser(),
          SizedBox(height: h * 0.025),

          SizedBox(
            height: h * 0.08,
            width: w * 0.95,
            child: Row(
              // textBaseline: TextBaseline.ideographic,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Coustemeruser(
                  h: h,
                  w: w,
                ).buildState(Icon(Icons.check), "31".tr),
                VerticalDivider(width: 17, thickness: 0.4, color: Colors.black),
                Coustemeruser(h: h, w: w).buildState(
                  Icon(Icons.star, color: Colors.amberAccent.shade700),
                  "32".tr,
                ),
                VerticalDivider(width: 17, thickness: 0.4, color: Colors.black),
                Coustemeruser(w: w, h: h).buildState(
                  Icon(Icons.favorite, color: Colors.redAccent.shade700),
                  "33".tr,
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.025),
          /////Prameteer /////////////////////////////////////////////
          /////Prameteer /////////////////////////////////////////////
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    // Edit Profaile تعديل الملف الشخصي
                    Coustemeruser(
                      h: h,
                      w: w,
                    ).buildProfileOption(Icons.edit, () {}, "34".tr),
                    //   Sucrty أمان  الحساب
                    Coustemeruser(
                      h: h,
                      w: w,
                    ).buildProfileOption(Icons.lock, () {}, "35".tr),
                    // Settings الاعدادات
                    Coustemeruser(
                      h: h,
                      w: w,
                    ).buildProfileOption(Icons.settings, () {}, "36".tr),
                    // log out تسجيل الخروج
                    Coustemeruser(h: h, w: w).buildProfileOption(
                      Icons.logout,
                      controler.Logout,
                      "37".tr,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//             // أزرار التحكم
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   _buildProfileOption(Icons.edit, "Edit Profile"),
//                   _buildProfileOption(Icons.lock, "Privacy"),
//                   _buildProfileOption(Icons.settings, "Settings"),
//                   _buildProfileOption(
//                     Icons.logout,
//                     "Logout",
//                     color: Colors.redAccent,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }


//   // عنصر خيار في القائمة
//   static Widget _buildProfileOption(
//     IconData icon, 
//     String title, {
//     Color color = Colors.black,
//   }) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: ListTile(
//         leading: Icon(icon, color: color),
//         title: Text(
//           title,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.w500,
//             color: color,
//           ),
//         ),
//         trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//         onTap: () {},
//       ),
//     );
//   }
// }
