import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utss4/model/petugasModel.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  // final data = [];
  @override
  void onInit() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // final items =
    //     dataLoginFromJson(preferences.getStringList('login').toString());
    print(preferences.getString('login'));
    // data = preferences.getString('login');
    // print(items);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
