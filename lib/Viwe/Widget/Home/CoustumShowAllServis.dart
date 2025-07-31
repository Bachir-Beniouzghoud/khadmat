import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/instance_manager.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/Controler/HomeControler.dart';

class CoustumShowAllServis extends StatelessWidget {
  CoustumShowAllServis({super.key,});
  
  Homecontroler Controler = Get.put(Homecontroler());

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: w - 220,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 3, top: 10, left: 3),
              child: Text(
                "27".tr,
                style: themeArabic.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 36, 72),
                  // color: AppColors.Black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "26".tr,
                  style: themeArabic.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        // the rumor Servis
        SizedBox(
          height: MediaQuery.of(context).size.height / 2 + 100,
          child: GridView.builder(
            // controller: Controler.scrollController.value,
            // physics:
            //     isLandscape != Orientation.landscape
            //         ? NeverScrollableScrollPhysics()
            //         : ScrollPhysics(),
            physics: ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                child: AspectRatio(
                  aspectRatio: 1.8 / 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5),
                      decoration: BoxDecoration(
                        // color: AppColors.ScafoldColor,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "${dataStatic.urlimge}/img1.jpg",
                          ), //Imge Exmples
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            // end: Alignment.bottomLeft,
                            stops: const [0.1, 0.8],
                            colors: [
                              AppColors.Black.withOpacity(0.8),
                              AppColors.Black.withOpacity(0.1),
                            ],
                          ),
                        ),
                        alignment: Alignment.bottomRight,

                        child: Container(
                          height: h * 0.23,
                          width: w * 0.419,
                          padding: const EdgeInsets.only(
                            bottom: 20,
                            right: 5,
                            left: 5,
                          ),
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            dataStatic.TextExmple,
                            textAlign: TextAlign.end,
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                            style: themeArabic.textTheme.headlineLarge
                                ?.copyWith(
                                  color: AppColors.white,
                                  fontSize: 13,
                                  // fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
