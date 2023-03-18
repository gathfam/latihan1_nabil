import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:utss4/app/modules/component/widget.dart';
import 'package:utss4/app/modules/config/color.dart';

import '../../../controllers/auth_controller.dart';
import '../../../controllers/firebase_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final data = Get.put(LoginController());
    final auth = Get.put(AuthController());
    final firebase = Get.put(FirebaseController());
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      color: white,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      width: lebar,
      height: tinggi,
      child: Wrap(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Wrap(
              runSpacing: 10,
              children: [
                Text(
                  "Selamat datang! 👋",
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  style: TextStyle(
                      // color: mainColor,
                      // fontWeight: FontWeight.w700,
                      fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Wrap(
              runSpacing: 40,
              children: [
                Wrap(
                  runSpacing: 25,
                  children: [
                    TextInput(
                        placeholder: "Masukan Nama", controller: data.nama),
                    TextInput(
                        placeholder: "Masukan NIS/Password",
                        controller: data.password),
                    Obx(() => Select(
                        value: data.selected.value == ""
                            ? null
                            : data.selected.value,
                        width: lebar,
                        placeholder: Text("Masuk sebagai"),
                        items: data.items.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          data.onChange(value);
                          // data.selected.value = value;
                          // print(value);
                          print("Selected Value ${data.selected.value}");
                        }))
                  ],
                ),
                Button(
                    label: "Login",
                    onTap: () {
                      // firebase.login(data.nama.text, data.password.text);
                      // Get.offAllNamed("/home", arguments: data);
                      auth.loginApi(data.nama.text, data.password.text,
                          data.selected.value);
                      // print(data.nama.text);
                      // print(data.password.text);
                    },
                    width: lebar,
                    height: tinggi)
              ],
            ),
          ),
          Container(
            width: lebar,
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Wrap(
              runSpacing: 40,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: lebar * 0.3,
                        child: Divider(
                          color: Colors.grey[400],
                          height: 4,
                        ),
                      ),
                      Text(
                        "or Login with",
                        style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                      ),
                      Container(
                        width: lebar * 0.3,
                        child: Divider(
                          color: Colors.grey[400],
                          height: 4,
                        ),
                      ),
                    ]),
                Container(
                  width: lebar,
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceBetween,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    // spacing: 10,
                    children: [
                      OutlineButton(
                          width: lebar / 2.3,
                          height: tinggi,
                          label: "Google",
                          color: Colors.grey[400]),
                      OutlineButton(
                          width: lebar / 2.3,
                          height: tinggi,
                          label: "Facebook",
                          color: Colors.grey[400])
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
