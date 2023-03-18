import 'package:get/get.dart';

import '../modules/dataKelas/bindings/data_kelas_binding.dart';
import '../modules/dataKelas/views/data_kelas_view.dart';
import '../modules/dataPetugas/bindings/data_petugas_binding.dart';
import '../modules/dataPetugas/views/data_petugas_view.dart';
import '../modules/dataSiswa/bindings/data_siswa_binding.dart';
import '../modules/dataSiswa/views/data_siswa_view.dart';
import '../modules/dataSpp/bindings/data_spp_binding.dart';
import '../modules/dataSpp/views/data_spp_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homeAdmin/bindings/home_admin_binding.dart';
import '../modules/homeAdmin/views/home_admin_view.dart';
import '../modules/homePetugas/bindings/home_petugas_binding.dart';
import '../modules/homePetugas/views/home_petugas_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/pembayaran/bindings/pembayaran_binding.dart';
import '../modules/pembayaran/views/pembayaran_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME_ADMIN,
      page: () => const HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PETUGAS,
      page: () => const HomePetugasView(),
      binding: HomePetugasBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN,
      page: () => const PembayaranView(),
      binding: PembayaranBinding(),
    ),
    GetPage(
      name: _Paths.DATA_SISWA,
      page: () => const DataSiswaView(),
      binding: DataSiswaBinding(),
    ),
    GetPage(
      name: _Paths.DATA_PETUGAS,
      page: () => const DataPetugasView(),
      binding: DataPetugasBinding(),
    ),
    GetPage(
      name: _Paths.DATA_KELAS,
      page: () => const DataKelasView(),
      binding: DataKelasBinding(),
    ),
    GetPage(
      name: _Paths.DATA_SPP,
      page: () => const DataSppView(),
      binding: DataSppBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
