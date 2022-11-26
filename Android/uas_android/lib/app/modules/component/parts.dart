
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget partsButton(
  String text,
  String partName,
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
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.width * 0.13,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.purple[800], fontSize: size),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Center(
              child: Text(
                partName,
                style: TextStyle(color: Colors.purple[800], fontSize: size),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
