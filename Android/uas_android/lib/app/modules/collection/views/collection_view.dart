import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/collection_controller.dart';

class CollectionView extends GetView<CollectionController> {
  const CollectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          
          title: Text(
            "Collection",
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
        body: Center(
          child: Text(
            'CollectionView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
