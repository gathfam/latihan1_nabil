import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component/button.dart';
import '../../component/buttonOutline.dart';
import '../controllers/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                banner(context),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: button(
                        "Login",
                        "/login",
                        context,
                        Colors.white,
                        1,
                        13,
                      ),
                    ),
                    buttonOutline(
                      "Register",
                      "/register",
                      context,
                      Colors.purple[800],
                      1,
                      13,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget banner(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.width * 1.13,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/undraw.png"), fit: BoxFit.cover),
          // color: Colors.purple[800],
          // borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Discover The World of Word',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Enim eu faucibus sed enim eget et. Sed faucibus cursus curabitur magna blandit adipiscing mattis mi.',
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );
}
