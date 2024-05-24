import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/core/values/show_loading.dart';
import 'package:member_rkm/app/core/values/snackbars.dart';
import 'package:member_rkm/app/data/providers/register_provider.dart';

class RegisterController extends GetxController {
  final RegisterProvider registerProvider;

  RegisterController({required this.registerProvider});

  final formKey = GlobalKey<FormState>().obs;
  final namaController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  final referralController = TextEditingController().obs;
  //final barcodeController = TextEditingController().obs;
  final showPass = true.obs;
  final showConfirmPass = true.obs;
  final loading = false.obs;

  final username = Rx<String?>(null);
  final barcode = ''.obs;

  @override
  void onClose() {
    namaController.value.dispose();
    emailController.value.dispose();
    phoneController.value.dispose();
    passwordController.value.dispose();
    confirmPasswordController.value.dispose();
    referralController.value.dispose();
    super.onClose();
  }

  void register() async {
    final formData = dio.FormData.fromMap({
      'name': namaController.value.text,
      'email': emailController.value.text,
      'phone_user': phoneController.value.text,
      'password': passwordController.value.text,
      'password_confirmation': confirmPasswordController.value.text,
      // 'referal': referralController.value.text,
      'referal': barcode.value.toString(),

      
      
    });

    showLoading();

    try {
      final response = await registerProvider.register(formData);

      if (response.statusCode == 200) {
        Get.back();

        if (response.data['verify'] == 0) {
          successSnackbar(
            'Register Berhasil',
            'Register sudah berhasil, silahkan verifikasi akun anda',
          );
          Get.offAndToNamed('/verify', arguments: {
            'email': response.data['email'],
            '': phoneController.value.text,
          });
        }
      }
    } on dio.DioException catch (e) {
      Get.back();
      if (e.response?.statusCode == 422) {
        if (e.response?.data['email'] == null &&
            e.response?.data['phone_user'] == null) {
          infoSnackbar(
            'Register Gagal',
            e.response?.data['message'],
          );
        } else if (e.response?.data['email'] != null &&
            e.response?.data['phone_user'] != null) {
          infoSnackbar(
            'Register Gagal',
            'Email dan No. Telepon sudah digunakan',
          );
        } else if (e.response?.data['email'] != null) {
          infoSnackbar(
            'Register Gagal',
            'Email sudah digunakan',
          );
        } else if (e.response?.data['email'] == null &&
            e.response?.data['phone_user'] != null) {
          infoSnackbar(
            'Register Gagal',
            'No. Telepon sudah digunakan',
          );
        }
      } else {
        failedSnackbar(
          'Register Gagal',
          'Ups sepertinya terjadi kesalahan. code:${e.response?.statusCode}',
        );
      }
    } finally {
      loading.value = false;
    }
  }

  Future<void> scanBarcode() async {
    try {
      var result = await BarcodeScanner.scan();
      barcode.value = result.rawContent;
      //barcodeController.value = result.rawContent as TextEditingController;
    } catch (e) {
      barcode.value = 'Failed to get the barcode.';
    }
  }
}
