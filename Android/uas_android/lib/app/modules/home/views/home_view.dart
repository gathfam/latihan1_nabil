import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../../../data/Controller.dart/BookController.dart';
import '../../../data/model/BookModel.dart';
import '../../component/button.dart';
import '../../component/buttonOutline.dart';
import '../../component/searchbar.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends StatelessWidget {
  final arguments = Get.arguments;
  HomeController controller = Get.put(HomeController());
  Widget build(BuildContext context) {
    // print();
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
                right: 20.0, left: 20.0, bottom: 100.0, top: 50.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // searchBar(context),
                  header(context, controller.user.value),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: banner(context),
                  ),
                  //  bookCollection(context, "New Books", controller.book),
                  //   bookCard(context, "Laskar's Favorite", controller.book[3]),
                  //   bookCollection(context, "Recently Read", controller.book),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget header(BuildContext context, String user) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.15,
        width: MediaQuery.of(context).size.width * 1,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                user,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Get.toNamed("/collection");
            },
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
                ]),
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
          // image: DecorationImage(image: NetworkImage("")),
          color: Colors.purple[800],
          borderRadius: BorderRadius.circular(15)),
    );
  }

  Widget bookCollection(BuildContext context, String tab, final data) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: InkWell(
              onTap: () {
                Get.toNamed("/categories", arguments: data);
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
                  return book(context, controller.book[index].img,
                      controller.book[index]);
                }),
              ),
            ]),
          )
        ],
      ),
    );
  }

  Widget book(BuildContext context, String image, final data) {
    return InkWell(
      onTap: () {
        Get.toNamed('/detail-book', arguments: data);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
            color: Colors.purple[800],
            borderRadius: BorderRadius.circular(10.0),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
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

  Widget bookCard(BuildContext context, String tab, final controller) {
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
                book(context, controller.img, controller.title),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            controller.title,
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          Text(
                            controller.author,
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ],
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
