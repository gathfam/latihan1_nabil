import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas2022/app/modules/component/button.dart';
import 'package:uas2022/app/modules/component/parts.dart';
import 'package:uas2022/app/modules/home/views/home_view.dart';

import '../../login/views/pages/banner.dart';
import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Detail Book",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
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
                header(context, "1"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget header(BuildContext context, String title) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
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
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.purple[800], fontSize: 20),
              ),
            ),
          ),
        ),
        rate(context, "40", 10),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.remove_red_eye_sharp),
                ),
                Text(
                  "Reads",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              "${reads}K",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.list_rounded),
                ),
                Text(
                  "Parts",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              parts.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
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
    height: MediaQuery.of(context).size.width * 0.35,
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
          )
        ]),
  );
}

Widget parts(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.width * 1.08,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Parts",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            height: MediaQuery.of(context).size.width * 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Wrap(
                    verticalDirection: VerticalDirection.down,
                    runSpacing: MediaQuery.of(context).size.width * 0.02,
                    children: List.generate(
                        10,
                        (index) => partsButton("${index}", "Part Title", "",
                            context, Colors.white, 1, 20)),
                  ),
                ],
              ),
            ),
          )
        ]),
  );
}
