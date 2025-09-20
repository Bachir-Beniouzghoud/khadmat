import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Massegscontroler extends GetxController {
  late TextEditingController TextControler;
  late ScrollController scrollcontroler;
  @override
  void onInit() {
    TextControler = TextEditingController();
    scrollcontroler = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollcontroler.jumpTo(scrollcontroler.position.maxScrollExtent);
    });
    super.onInit();
  }

  List<Map<String, Object>> Masseges_Test =
      [
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {"Sender": true, "Massege": "Hi Bachir 👋", "Time": "10:00 AM"},
        {
          "Sender": false,
          "Massege": "Hey Mohamed, how are you?",
          "Time": "10:01 AM",
        },
        {
          "Sender": true,
          "Massege":
              "I'm good, thanks! What about you? fgdgdfgdgdgdgdgdgggggggggggggggggggggggggggggggggggggggg",
          "Time": "10:02 AM",
        },
        {
          "Sender": false,
          "Massege": "Doing well, just working on my Flutter project.",
          "Time": "10:03 AM",
        },
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
        {"Sender": true, "Massege": "Cool! Need any help?", "Time": "10:07 AM"},
      ].obs;
}
