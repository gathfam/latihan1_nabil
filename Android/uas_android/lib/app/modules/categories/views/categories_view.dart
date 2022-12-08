import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas2022/app/modules/detailBook/views/detail_book_view.dart';
import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  @override
  var data = Get.arguments;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Categories",
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 1.8,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(children: [
                          Center(
                            child: Wrap(
                              runSpacing:
                                  MediaQuery.of(context).size.width * 0.04,
                              spacing: MediaQuery.of(context).size.width * 0.04,
                              children: List.generate(5, (index) {
                                return book(
                                    context, data[index].img, data[index]);
                              }),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Widget genre(BuildContext context, controller) {
  return Container(
    padding: EdgeInsets.only(bottom: 15.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Wrap(
          runSpacing: MediaQuery.of(context).size.width * 0.05,
          spacing: MediaQuery.of(context).size.width * 0.1,
          children: List.generate(controller.cat.length, (index) {
            return Text("");
          }),
        ),
      ]),
    ),
  );
}

Widget book(BuildContext context, String image, final data) {
  return InkWell(
    onTap: () {
      // Get.toNamed('/detail-book', arguments: data);
      Get.toNamed('/detail-book', arguments: data);
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
