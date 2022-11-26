import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../component/book2.dart';
import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  @override
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
                                  MediaQuery.of(context).size.width * 0.02,
                              spacing: MediaQuery.of(context).size.width * 0.02,
                              children: List.generate(20, (index) {
                                return book2(
                                    context, "Book ${index}", "John ${index}");
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
