import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../component/book2.dart';
import '../../component/searchbar.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: searchBar(context, search)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    Center(
                      child: Wrap(
                        runSpacing: MediaQuery.of(context).size.width * 0.02,
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
            ),
          ],
        ),
      ),
    ));
  }
}

Widget header(
    BuildContext context, String user, TextEditingController controller) {
  return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
          height: MediaQuery.of(context).size.width * 1,
          width: MediaQuery.of(context).size.width * 1,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Home",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            searchBar(context, controller)
          ])));
}
