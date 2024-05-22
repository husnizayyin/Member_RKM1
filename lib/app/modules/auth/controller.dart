import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:member_rkm/app/core/values/show_loading.dart';
import 'package:member_rkm/app/core/values/snackbars.dart';
import 'package:member_rkm/app/data/providers/auth_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AuthController extends GetxController {
  final AuthProvider authProvider;

  AuthController({required this.authProvider});

  void logout() async {
    showLoading();

    try {
      await authProvider.logout();
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.clear();
      await sharedPreferences.setBool('opened', true);

      if (Get.currentRoute == '/deleteAccount') {
        infoSnackbar(
          'Hapus Akun Berhasil',
          'Akun anda berhasil dihapus dan anda berhenti sebagai anggota member. Terima kasih dan sampai jumpa',
        );
      } else {
        infoSnackbar(
          'Log Out Berhasil',
          'Anda sudah berhasil log out',
        );
      }
      Get.offAllNamed('/dashboard');
    } on dio.DioException catch (e) {
      Get.back();
      if (e.response?.statusCode == 500) {
        failedSnackbar('Log Out Gagal', 'Ups telah terjadi sesuatu');
      } else {
        infoSnackbar('Log Out Gagal', e.response?.data.toString() ?? '');
      }
    }
  }
}
