import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/BookModel.dart';

Widget bookOther(BuildContext context, String image) {
  return InkWell(
    onTap: () {
      // Get.toNamed('/detail-book', arguments: data);
      Get.toNamed('/detail-book', );
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
          color: Colors.purple[800],
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ]),
    ),
  );
}
