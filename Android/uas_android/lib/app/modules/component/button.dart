import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget button(
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
      height: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        color: Colors.purple[800],
        borderRadius: BorderRadius.circular(15),
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
        style: TextStyle(color: color, fontSize: size),
      )),
    ),
  );
}
