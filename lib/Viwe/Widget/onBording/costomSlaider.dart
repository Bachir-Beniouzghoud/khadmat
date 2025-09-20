// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:khadamat/Constante/ThimeApp.dart';
// import 'package:khadamat/Constante/static.dart';
// import 'package:khadamat/Controler/onBordingControler.dart';

// class costomSlaider extends GetView<onBordingControlerImp> {
//   const costomSlaider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     Get.put(onBordingControlerImp());
//     return PageView.builder(
//       allowImplicitScrolling: true,
//       onPageChanged: (value) {
//         controller.onPageChanged(value);
//       },
//       controller: controller.pageControler,
//       itemCount: dataStatic().onBordinglist.length,
//       itemBuilder: (context, index) {
//         return Column(
//           children: [
//             // add images on Pordin g
//             ClipRRect(
//               borderRadius: const BorderRadius.all(Radius.circular(25)),
//               child: Image.asset(
//                 dataStatic().onBordinglist[index].urlimage,
//                 fit: BoxFit.cover,
//                 width: w * 0.9,
//               ),
//             ),
//             SizedBox(height: h * 0.05),
//             Text(
//               dataStatic().onBordinglist[index].title,
//               textAlign: TextAlign.center,
//               style: themeArabic.textTheme.bodyLarge,
//             ),
//             SizedBox(height: h * 0.025),
//             Text(
//               dataStatic().onBordinglist[index].body,
//               style: themeArabic.textTheme.headlineLarge,
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/Controler/onBordingControler.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:khadamat/data/model/onBordingModle.dart';

// class costomSlaider extends GetView<onBordingControlerImp> {
//   const costomSlaider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;

//     return PageView.builder(
//       controller: controller.pageControler,
//       onPageChanged:
//           (value) => controller.onPageChanged(
//             value % dataStatic().onBordinglist.length,
//           ),
//       itemCount: dataStatic().onBordinglist.length,
//       itemBuilder: (context, index) {
//         final item =
//             dataStatic().onBordinglist[index %
//                 dataStatic().onBordinglist.length];
//         return Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: w * 0.05,
//             vertical: h * 0.02,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // ✅ الصورة بنسبة عرض وارتفاع ثابتة (متجاوبة)
//               AspectRatio(
//                 aspectRatio: 16 / 10,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     item.urlimage,
//                     fit: BoxFit.cover,
//                     width: w * 0.9,
//                   ),
//                 ),
//               ),
//               SizedBox(height: h * 0.04),
//               // ✅ العنوان
//               Text(
//                 item.title,
//                 textAlign: TextAlign.center,
//                 style: themeArabic.textTheme.bodyLarge?.copyWith(
//                   fontSize: w * 0.06, // مقاس خط نسبي
//                 ),
//                 softWrap: true,
//               ),

//               SizedBox(height: h * 0.02),

//               // ✅ الوصف
//               Text(
//                 item.body,
//                 textAlign: TextAlign.center,
//                 style: themeArabic.textTheme.headlineLarge?.copyWith(
//                   fontSize: w * 0.06, // خط أصغر قليلاً
//                   color: Colors.grey[700],
//                 ),
//                 softWrap: true,
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
class costomSlider extends StatelessWidget {
  costomSlider({super.key});
  onBordingControlerImp Controler = Get.put(onBordingControlerImp());
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    //  نحدد هل الجهاز موبايل أو تابلت/ديسكتو
    bool isTablet = w > 600;
    return Padding(
      padding: EdgeInsets.only(top: h * 0.1),
      child: Column(
        children: [
          CarouselSlider(
            items:
                dataStatic().onBordinglist.map((value) {
                  return ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: SizedBox(
                      width: w * 0.85, // عرض نسبي
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ****************************************** الصورة******************************************
                          // ****************************************** الصورة******************************************
                          Expanded(
                            flex: isTablet ? 2 : 3,
                            child: Image.asset(
                              value.urlimage,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          SizedBox(height: h * 0.02),
                          // *********************************** العنوان*****************************************
                          Text(
                            value.title,
                            textAlign: TextAlign.center,
                            style: themeArabic.textTheme.bodyLarge?.copyWith(
                              fontSize: isTablet ? w * 0.03 : w * 0.06,
                              // fontWeight: FontWeight.bold,
                            ),
                            softWrap: true,
                          ),

                          SizedBox(height: h * 0.015),

                          // *********************************** الوصف*****************************************
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                            child: Text(
                              value.body,
                              textAlign: TextAlign.center,
                              style: themeArabic.textTheme.headlineLarge
                                  ?.copyWith(
                                    fontSize: isTablet ? w * 0.02 : w * 0.045,
                                    // color: Colors.grey[700],
                                  ),
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
            // ***************************************************
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                Controler.cruntpage.value = index;
              },
              height: isTablet ? h * 0.6 : h * 0.5,
              autoPlay: true,
              aspectRatio: 2,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              viewportFraction:
                  isTablet ? 0.5 : 0.8, // في التابلت نشوف أكثر من عنصر
            ),
          ),
          // ************************Space*******************
          SizedBox(height: h * 0.1),
          AnemationDots(h, w),
        ],
      ),
    );
  }

  // *******************show image ************************
  Widget AnemationDots(double h, double w) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(dataStatic().onBordinglist.length, (index) {
          bool isActive = index == Controler.cruntpage.value;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            margin: EdgeInsets.symmetric(horizontal: w * 0.01),
            width: isActive ? w * 0.05 : w * 0.02, // Responsive
            height: h * 0.008,
            decoration: BoxDecoration(
              color: isActive ? Colors.blue : Colors.blue.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
          );
        }),
      ),
    );
  }
}
