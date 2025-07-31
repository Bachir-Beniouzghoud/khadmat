import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:khadamat/Constante/AppColors.dart';
import 'package:khadamat/Constante/ThimeApp.dart';

class Coustumcategory extends StatelessWidget {
  const Coustumcategory({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          spacing: w - 220,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5, top: 1, left: 5),
              child: Text(
                "25".tr,
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
        // Categorey
        SizedBox(
          // height: 50,
          height: MediaQuery.of(context).size.width / 8,

          child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //   maxCrossAxisExtent: 100,
            //   childAspectRatio: 3 / 9,
            //   // mainAxisExtent: 10,
            //   crossAxisSpacing: 2,
            //   mainAxisSpacing: 1,
            // ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: themeArabic.elevatedButtonTheme.style?.copyWith(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                      Color.fromARGB(255, 255, 203, 0),
                    ),
                    // : Colors.yellowAccent,

                    // Colors.yellowAccent
                  ),
                  onPressed: () {},
                  child: Text(
                    "بينات $index",
                    style: themeArabic.textTheme.headlineLarge?.copyWith(
                      color: AppColors.Black,
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
