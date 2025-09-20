import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Controler/MassegsControler.dart';

class MassegeCoustumer {
  Massegscontroler Controler = Get.put(Massegscontroler());
  late double w, h;
  MassegeCoustumer({required this.w, required this.h});
  // The widget show Massege in the chat screen
  Widget Massege(int index) {
    return Obx(
      () => Align(
        alignment:
            Controler.Masseges_Test[index]["Sender"] == true
                ? Alignment.centerRight
                : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(maxWidth: w * 0.7),
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color:
                Controler.Masseges_Test[index]["Sender"] == false
                    ? Colors.blue
                    : Colors.blueGrey.shade300,
            // shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          // The Massege
          child: Text(
            Controler.Masseges_Test[index]["Massege"].toString(),
            softWrap: true,
            maxLines: 100,
          ),
        ),
      ),
    );
  }

  // fonction the input text sender
  Widget InputText() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(8),
          width: w * 0.7,
          child: TextField(
            controller: Controler.TextControler,
            maxLength: 200,
            maxLines: 10,
            minLines: 1,
            style: TextStyle(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              counterText: "",
              hintText: "29".tr,
              hintStyle: TextStyle(fontSize: 15, color: Colors.black),
              filled: true,
              fillColor: Colors.blue.shade100,
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send, color: Colors.blue, size: 30),
          onPressed: () {
            if (Controler.TextControler.text.isNotEmpty) {
              // add fonction send massege in data base
              Controler.Masseges_Test.add({
                "Sender": false,
                "Massege": Controler.TextControler.text.trim(),
                "Time": DateTime.now().toString(),
              });
              Controler.TextControler.clear();
            }
          },
        ),
      ],
    );
  }
}
