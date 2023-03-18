import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/firebase_controller.dart';
import '../../config/color.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    final firebase = Get.put(FirebaseController());
    final controller = Get.put(HomeController());
    final argument = Get.arguments;
    return Scaffold(
      body: Container(
        color: white,
        width: lebar,
        height: tinggi,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Wrap(
          runSpacing: 30,
          children: [
            header(username: "tes", firebase: firebase),
            Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              runSpacing: 10,
              children: [
                section(
                    width: lebar / 2.3,
                    color: Colors.white,
                    icon: Icons.person_rounded,
                    title: "Data Siswa",
                    subTitle: "Jumlah Siswa 0",
                    textColor: black),
                section(
                    width: lebar / 2.3,
                    color: Colors.white,
                    title: "Data Kelas",
                    subTitle: "Jumlah Kelas 0",
                    textColor: black,
                    icon: Icons.class_rounded),
                section(
                    width: lebar / 2.3,
                    color: Colors.white,
                    title: "Data Spp",
                    subTitle: "List Spp",
                    icon: Icons.data_usage_rounded,
                    textColor: black),
                section(
                    width: lebar / 2.3,
                    color: Colors.white,
                    title: "History Pembayaran",
                    subTitle: "Lihat history pemabayaran",
                    icon: Icons.history_rounded,
                    textColor: black),
                banner(
                    width: lebar,
                    color: mainColor,
                    title: "Lakukan Pembayaran",
                    subTitle: "Lakukan Pembayaran Spp Siswa",
                    textColor: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget header({username, role, firebase}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(direction: Axis.vertical, runSpacing: 10, children: [
          Text(
            'Selamat datang,',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 147, 146, 146)),
          ),
          Text(
            '${username}',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ]),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            firebase.signOut();
          },
          child: Wrap(alignment: WrapAlignment.center, spacing: 5, children: [
            Text(
              "Logout",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.red[500],
                  fontWeight: FontWeight.w700),
            ),
            Icon(
              Icons.exit_to_app,
              size: 30,
              color: Colors.red[500],
            ),
          ]),
        )
      ],
    ),
  );
}

Widget banner({title, subTitle, route, color, width, textColor}) {
  return Container(
    padding: EdgeInsets.fromLTRB(25, 10, 10, 0),
    width: width,
    height: 150,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(35.0),
    ),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 25,
                          color: textColor,
                          fontWeight: FontWeight.w600)),
                  Text(subTitle == null ? "" : subTitle,
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500))
                ],
              ),
              Icon(Icons.arrow_right_rounded, size: 70, color: Colors.white)
            ],
          )
        ]),
  );
}

Widget section({title, subTitle, route, color, width, textColor, icon}) {
  return Container(
    padding: EdgeInsets.all(25),
    width: width,
    height: width,
    decoration: BoxDecoration(
      color: color,
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: mainColorAccent, blurRadius: 25.0, offset: Offset(0.0, 1.5))
      ],
      borderRadius: BorderRadius.circular(35.0),
    ),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                icon,
                size: 40,
                color: black,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 25,
                      color: textColor,
                      fontWeight: FontWeight.w600)),
              Text(subTitle == null ? "" : subTitle,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500))
            ],
          )
        ]),
  );
}
