import 'package:flutter/material.dart';
import 'package:khadamat/Constante/ThimeApp.dart';

class Coustemtextcreatcount extends StatelessWidget {
  Coustemtextcreatcount({
    super.key,
    required this.CreatCount,
    required this.Qustioncount,
    required this.onPressed,
  });
  Function() onPressed;
  String CreatCount;
  String Qustioncount;
  var style = themeArabic.textTheme.headlineLarge?.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      // mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            maxLines: 2,
            Qustioncount,
            style: style,
            softWrap: true,
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: onPressed,
            child: Text(maxLines: 2, softWrap: true, CreatCount, style: style),
          ),
        ),
      ],
    );
  }
}
