import 'package:flutter/material.dart';

class costomBottum extends StatelessWidget {
  String title;
  Function()? onPressed;
  costomBottum({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: onPressed, child: Text(title)),
    );
  }
}
