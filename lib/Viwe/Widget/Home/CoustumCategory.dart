import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Constante/ThimeApp.dart';
import 'package:khadamat/Controler/HomeControler.dart';

class Coustumcategory extends StatelessWidget {
  Coustumcategory({required this.Controler, super.key});
  // Homecontroler Controler = Get.put(Homecontroler());
  Homecontroler Controler;
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
        // *********************************************************************************
        // ******************************************The Categorey *************************
        // ******************************************fonction Categorey *************************
        category(),
      ],
    );
  }

  //Category
  Widget category() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: Controler.categories.length,
        itemBuilder: (context, index) {
          return Obx(() {
            final bool isSelect =
                Controler.SelectitmeCategory == Controler.categories[index];

            return GestureDetector(
              onTap: () {
                // Handle category tap
                Controler.SelectitmeCategory.value =
                    Controler.categories[index];
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: isSelect ? Colors.amberAccent : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: !isSelect ? Colors.white : Colors.amber,
                  ),
                ),
                child: Text(
                  Controler.categories[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
