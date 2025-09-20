// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:khadamat/Constante/AppColors.dart';

// import 'package:khadamat/Controler/onBordingControler.dart';

// class costomControler extends StatelessWidget {
//   const costomControler({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<onBordingControlerImp>(
//       // init: onBordingControlerImp(),
//       builder:
//           (controler) => Row(
//             mainAxisAlignment: MainAxisAlignment.center,

//             children: [
//               ...List.generate(controler.Lanthpage, (index) {
//                 return AnimatedContainer(
//                   // alignment: AlignmentDirectional(0, 5),
//                   duration: const Duration(seconds: 1),
//                   decoration: BoxDecoration(
//                     color: AppColors.blou,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   width: controler.cruntpage == index ? 19 : 7,
//                   height: 6,
//                   margin: const EdgeInsets.only(top: 20),
//                 );
//               }),
//             ],
//           ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Controler/onBordingControler.dart';

class CostomControler extends StatelessWidget {
  const CostomControler({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return GetBuilder<onBordingControlerImp>(
      builder:
          (controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(controller.Lanthpage, (index) {
              bool isActive = controller.cruntpage == index;
              return AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(microseconds: 1),
                curve: Curves.easeInOut,
                margin: EdgeInsets.symmetric(
                  horizontal: w * 0.01,
                  vertical: h * 0.015,
                ),
                width: isActive ? w * 0.05 : w * 0.02, // مقاس نسبي
                height: h * 0.007,
                decoration: BoxDecoration(
                  color:
                      isActive
                          ? AppColors.blou
                          : AppColors.blou.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),
    );
  }
}
