import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/banner.dart';
import 'pages/textfield.dart';
import 'package:get/get.dart';
import '../../component/button.dart';
import '../../component/buttonOutline.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final data = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: MediaQuery.of(context).size.height * 1,
              padding: EdgeInsets.all(20.0),
              child: Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          banner(context, data.loginText.value,
                              "Welcome back to Laskar"),
                          field(context, "Email", data.email, false, CupertinoIcons.envelope),
                          field(context, "Password", data.password, true, CupertinoIcons.eye_fill)
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account?"),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: InkWell(
                                            onTap: () {
                                              Get.toNamed("/register");
                                            },
                                            child: Text(
                                              "Register",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              buttonSubmit(
                                "Login",
                                context,
                                Colors.white,
                                data,
                                13,
                              ),
                            ],
                          ))
                    ],
                  ))),
        ),
      ),
    );
  }
}

Widget buttonSubmit(
  String text,
  BuildContext context,
  color,
  final controller,
  double size,
) {
  return InkWell(
    onTap: () {
      if (controller.toggle == true) {
        final snackBar = SnackBar(
          /// need to set following properties for best effect of awesome_snackbar_content
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          duration: 1500.milliseconds,

          content: AwesomeSnackbarContent(
            title: 'Login Success!',
            message: '',

            /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
            contentType: ContentType.success,
          ),
        );

        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
      } else {
        final snackBar = SnackBar(
          /// need to set following properties for best effect of awesome_snackbar_content
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          duration: 1500.milliseconds,
          content: AwesomeSnackbarContent(
            title: 'Login Failed!',
            message: "",

            /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
            contentType: ContentType.warning,
          ),
        );

        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
      }
      controller.onSubmit();
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        color: Colors.black87,
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
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: color, fontSize: size),
      )),
    ),
  );
}
