import 'package:flutter/material.dart';

Widget banner(BuildContext context, final label, final message) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.width * 0.5,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "http://unblast.com/wp-content/uploads/2021/01/Space-Background-Images.jpg"),
          fit: BoxFit.cover,
        ),
        // color: Color.fromARGB(94, 105, 27, 154),
        borderRadius: BorderRadius.circular(15)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text(message.toString(),
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20))
      ],
    ),
  );
}
