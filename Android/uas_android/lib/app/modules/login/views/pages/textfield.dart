import 'package:flutter/material.dart';

Widget field(
  BuildContext context,
  String hint,
  // final controller,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Text(
                hint,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.width * 0.15,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                // controller: controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                    fillColor: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
