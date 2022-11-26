import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component/button.dart';
import '../../component/buttonOutline.dart';
import '../../component/searchbar.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      // final books = Get.put(controller);
      log("==========================");
      log(controller.dataBooks.length.toString());
      log("==========================");
      return SafeArea(
        child: Scaffold(
          body: controller.dataBooks.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, bottom: 100.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // searchBar(context),
                        header(context, "Hannam"),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 5.0),
                          child: banner(context),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed("/categories");
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Tes",
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.start,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                  Wrap(
                                    spacing: MediaQuery.of(context).size.width *
                                        0.02,
                                    children: List.generate(
                                        controller.dataBooks.length, (index) {
                                      return book(
                                          context,
                                          controller.dataBooks[index]
                                              .data[index].img);
                                    }),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                        // bookCard(context, "Laskar's Favorite"),
                        // bookCollection(context, "Recently Read", HomeController()),
                      ],
                    ),
                  ),
                ),
        ),
      );
    });
  }

  Widget header(BuildContext context, String user) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.15,
        width: MediaQuery.of(context).size.width * 1,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Home",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: () {
              Get.toNamed("/collection");
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.38,
              height: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple[800]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey),
                      ),
                      Text(
                        user,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget banner(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("")),
          color: Colors.purple[800],
          borderRadius: BorderRadius.circular(15)),
    );
  }

  Widget bookCollection(BuildContext context, String tab, String image) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: InkWell(
              onTap: () {
                Get.toNamed("/categories");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tab,
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Wrap(
                spacing: MediaQuery.of(context).size.width * 0.02,
                children: List.generate(5, (index) {
                  return book(context, image);
                }),
              ),
            ]),
          )
        ],
      ),
    );
  }

  Widget book(BuildContext context, String image) {
    return InkWell(
      onTap: () {
        Get.toNamed('/detail-book');
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            color: Colors.purple[800],
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(image: NetworkImage(image)),
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

  Widget bookCard(BuildContext context, String tab) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Text(
                tab,
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.width * 0.5,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                book(context, ""),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TITLE",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Description",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          height: MediaQuery.of(context).size.width * 0.08,
                          child: buttonOutline(
                            "More Detail",
                            "/dashboard",
                            context,
                            Colors.purple[800],
                            0.2,
                            13,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
