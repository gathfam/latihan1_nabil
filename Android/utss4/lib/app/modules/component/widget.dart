import 'package:flutter/material.dart';
import 'package:utss4/app/modules/config/color.dart';

Widget TextInput({title, placeholder, controller}) {
  return Container(
    // width: width,
    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
    decoration: BoxDecoration(boxShadow: <BoxShadow>[
      BoxShadow(
          color: mainColorAccent, blurRadius: 25.0, offset: Offset(0.0, 1.5))
    ], borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          // suffixIconColor: Colors.black87,
          // suffixIcon: Icon(icon),
          border: InputBorder.none,
          hintText: placeholder,
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget Button({final onTap, label, width, height}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        width: width,
        height: height * 0.06,
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
              color: mainColorAccent,
              blurRadius: 25.0,
              offset: Offset(0.0, 1.5))
        ], borderRadius: BorderRadius.circular(10), color: mainColor),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        )),
  );
}

Widget OutlineButton({final onTap, label, width, height, color, icon}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        width: width,
        height: height * 0.06,
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: mainColorAccent,
                  blurRadius: 25.0,
                  offset: Offset(0.0, 1.5))
            ],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: color, width: 2)),
        child: Center(
          child: Wrap(spacing: 10, children: [
            // Icon(icon),
            Text(
              label,
              style: TextStyle(color: color, fontWeight: FontWeight.w700),
            ),
          ]),
        )),
  );
}

Widget Select({onChanged, items, value, placeholder, width, height}) {
  return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: DropdownButton(
          value: value,
          isExpanded: true,
          underline: Container(), //remove underline
          hint: placeholder,
          items: items,
          onChanged: onChanged));
}
