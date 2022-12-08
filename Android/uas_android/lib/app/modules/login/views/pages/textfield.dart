import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget field(BuildContext context, String hint, final controller, bool toggle,
    IconData icon) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colors.black45),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     spreadRadius: 0,
        //     blurRadius: 4,
        //     offset: Offset(0, 4), // changes position of shadow
        //   ),
        // ],
      ),
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.width * 0.16,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextFormField(
            obscureText: toggle,
            controller: controller,
            decoration: InputDecoration(
                // suffixIconColor: Colors.black87,

                focusColor: Colors.black87,
                suffixIcon: Icon(icon),
                border: InputBorder.none,
                hintText: "Enter your ${hint}",
                fillColor: Colors.transparent),
          ),
        ),
      ),
    ),
  );
}
