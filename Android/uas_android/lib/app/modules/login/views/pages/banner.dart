import 'package:flutter/material.dart';

Widget banner(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.width * 0.5,
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage("")),
        color: Colors.purple[800],
        borderRadius: BorderRadius.circular(15)),
  );
}
