import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buttonOutline(
  String text,
  String route,
  BuildContext context,
  color,
  double width,
  double size,
) {
  return InkWell(
    onTap: () {
      Get.toNamed(
        route,
      );
      print("TES");
    },
    child: Container(
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black87),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.black87, fontSize: size),
      )),
    ),
  );
}
