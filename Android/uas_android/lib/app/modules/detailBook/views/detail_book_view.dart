import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas2022/app/modules/component/button.dart';
import 'package:uas2022/app/modules/component/parts.dart';
import 'package:uas2022/app/modules/home/views/home_view.dart';

import '../../../data/model/BookModel.dart';
import '../../login/views/pages/banner.dart';
import '../controllers/detail_book_controller.dart';

class DetailBookView extends GetView<DetailBookController> {
  @override
  var data = Get.arguments;
  // final Books data;
  // DetailBookView({required this.data});

  Widget build(BuildContext context) {
    print(data.title);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Detail Book",
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          leading: InkWell(
            onTap: () {
              Get.back(canPop: true);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                header(context, data.title, data.img, data.author),
                sinopsis(context),
                // parts(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget header(BuildContext context, String title, String img, String author) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.4,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        book(context, img),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    author,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              rate(context, "40", 10),
              button("Read Now", "/book", context, Colors.white, 0.5, 13)
            ],
          ),
        )
      ],
    ),
  );
}

Widget rate(
  BuildContext context,
  String reads,
  int parts,
) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.5,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.remove_red_eye_sharp,
                    size: 20,
                  ),
                ),
                Text(
                  "Reads",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              "${reads}K",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.list_rounded,
                    size: 20,
                  ),
                ),
                Text(
                  "Parts",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              parts.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget sinopsis(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.width * 0.4,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Description",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.25,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus tristique velit amet, elit convallis nibh. Augue sed et neque bibendum. Ut sed egestas elementum, massa. Donec pharetra a sit imperdiet diam tincidunt ac dictum. Sed leo aenean platea imperdiet proin.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ),
          )
        ]),
  );
}

Widget book(
  BuildContext context,
  String image,
) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.3,
    height: MediaQuery.of(context).size.width * 0.65,
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
  );
}
