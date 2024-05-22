// import 'package:dio/dio.dart' as dio;
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:member_rkm/app/core/values/show_loading.dart';
// import 'package:member_rkm/app/core/values/snackbars.dart';
// import 'package:member_rkm/app/data/providers/forgotpin_provider.dart';
// import 'package:member_rkm/app/modules/dashboard/controller.dart';

// class ForgotPinController extends GetxController {
//   final ForgotPinProvider forgotPinProvider;

//   ForgotPinController({required this.forgotPinProvider});

//   final userController = Get.find<DashboardController>();

//   final currentPage = 0.obs;
//   final pageController = PageController().obs;

//   final chooseVerify = Rx<String?>(null);
//   final email = Rx<String?>(null);
//   final phoneNumber = Rx<String?>(null);

//   final formKey = GlobalKey<FormState>().obs;
//   final otpController = TextEditingController().obs;

//   @override
//   void onInit() {
//     email.value = userController.profile.value?.emailUser;
//     phoneNumber.value = userController.profile.value?.phoneUser;
//     super.onInit();
//   }

//   @override
//   void onClose() {
//     pageController.value.dispose();
//     otpController.value.dispose();
//     super.onClose();
//   }

//   Future<void> movePage(int page) async {
//     pageController.value.animateToPage(
//       page,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.easeInOutCubic,
//     );
//   }

//   void forgotPinSendType(String type) async {
//     final formData = dio.FormData.fromMap({
//       'type': type,
//     });

//     showLoading();

//     try {
//       final response = await forgotPinProvider.forgotPinSendType(formData);

//       if (response.statusCode == 200) {
//         Get.back();
//         print(response.data);
//         movePage(1);
//       }
//     } on dio.DioException catch (e) {
//       Get.back();

//       failedSnackbar(
//         'Kirim OTP Gagal',
//         e.response?.data['message'] ??
//             'Ups sepertinya terjadi kesalahan. code:${e.response?.statusCode}',
//       );
//     }
//   }

//   void verifyOtp() async {
//     final formData = dio.FormData.fromMap({
//       'type': chooseVerify.value,
//       'otp': otpController.value.text,
//     });

//     showLoading();

//     try {
//       final response = await forgotPinProvider.forgotPinVerifyOtp(formData);

//       if (response.statusCode == 200) {
//         Get.back();
//         successSnackbar(
//           'Verifikasi OTP Berhasil',
//           response.data['message'] ??
//               'Kode OTP yang anda masukkan benar. Silahkan reset pin anda',
//         );
//         Get.offAndToNamed(
//           '/resetPin',
//           arguments: {
//             'type': chooseVerify.value,
//           },
//         );
//       }
//     } on dio.DioException catch (e) {
//       Get.back();
//       failedSnackbar(
//         'Verifikasi OTP Gagal',
//         e.response?.data['message'] ??
//             'Ups sepertinya terjadi kesalahan. code:${e.response?.statusCode}',
//       );
//     }
//   }
// }
