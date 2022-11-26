import 'package:flutter/material.dart';
import 'package:get/get.dart';
Widget book2(BuildContext context, String title, String author) {
  return InkWell(
    onTap: () {
      Get.toNamed('/detail-book');
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.43,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.43,
            height: MediaQuery.of(context).size.width * 0.56,
            decoration: BoxDecoration(
                color: Colors.purple[800],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ]),
          ),
        ],
      ),
    ),
  );
}
