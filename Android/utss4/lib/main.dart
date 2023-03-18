import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // stream: controller.streamAuthStatus(),
      builder: (context, snapshot) {
        print(snapshot.connectionState);
        print(snapshot.data);
        return SafeArea(
          child: GetMaterialApp(
            theme: ThemeData(fontFamily: 'Inter'),
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: Routes.LOGIN,
            // snapshot.data != null && snapshot.data?.emailVerified == true
            //     ? Routes.HOME
            //     : Routes.HOME,

            getPages: AppPages.routes,
          ),
        );
        // if (snapshot.connectionState == ConnectionState.active) {
        // } else {
        //   return MaterialApp(
        //     home: Scaffold(
        //         body: Center(
        //       child: CircularProgressIndicator(),
        //     )),
        //   );
        // }
      },
    );
  }
}
