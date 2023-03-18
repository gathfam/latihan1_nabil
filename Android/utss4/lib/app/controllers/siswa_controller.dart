import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SiswaController extends GetxController {
  String url = 'http:/localhost:1040';
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('${url}/getSiswa'));
    if (response.statusCode == 200) {
      // Do something with the response
      // Siswa data = re
    } else {
      throw Exception('Failed to load data');
    }
  }
}
