import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/components/base_button.dart';
import 'package:member_rkm/app/components/base_formgroupfield%20copy.dart';
import 'package:member_rkm/app/components/base_text.dart';
import 'package:member_rkm/app/core/values/app_helpers.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/auth/widgets/register/controller.dart';

class FormRegister extends StatelessWidget {
  FormRegister({super.key});
  final controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView(
        children: [
          Padding(
            padding: Get.height > 750
                ? const EdgeInsets.fromLTRB(15, 40, 15, 0)
                : const EdgeInsets.all(15),
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: 200,
            ),
          ),
          const SizedBox(height: 20),
          if (Get.height < 750) const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: Form(
                key: controller.formKey.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BaseFormGroupFieldAuth(
                      label: 'Nama Lengkap',
                      hint: 'Masukkan nama lengkap anda',
                      controller: controller.namaController.value,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Nama lengkap tidak boleh kosong';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    BaseFormGroupFieldAuth(
                      label: 'Email',
                      hint: 'Masukkan email anda',
                      helper: controller.username.value == null ||
                              controller.username.value == ''
                          ? null
                          : '${controller.username.value} akan menjadi username anda',
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController.value,
                      onChanged: (value) =>
                          controller.username.value = value?.split('@').first,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email tidak boleh kosong';
                        } else {
                          if (!value.isEmail) {
                            return 'Email tidak valid';
                          }
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    BaseFormGroupFieldAuth(
                      label: 'No. Telepon',
                      hint: 'Masukkan no. telepon anda',
                      controller: controller.phoneController.value,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'No. telepon tidak boleh kosong';
                        } else {
                          if (!value.isPhoneNumber) {
                            return 'No. telepon tidak valid';
                          }
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    BaseFormGroupFieldAuth(
                      label: 'Password',
                      hint: 'Masukkan password anda',
                      controller: controller.passwordController.value,
                      obscureText: controller.showPass.value,
                      suffixIcon: IconButton(
                        color: Colors.white,
                        onPressed: () => controller.showPass.value =
                            !controller.showPass.value,
                        icon: Icon(controller.showPass.value
                            ? EvaIcons.eye
                            : EvaIcons.eyeOff),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password tidak boleh kosong';
                        } else {
                          if (value.length < 8) {
                            return 'Password minimal berjumlah 8 karakter';
                          } else {
                            if (!AppHelpers.passwordValidation
                                .hasMatch(value)) {
                              return 'Setidaknya password harus mengandung 1 huruf besar, 1 huruf kecil, dan 1 angka';
                            }
                          }
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    BaseFormGroupFieldAuth(
                      label: 'Konfirmasi Password',
                      hint: 'Masukkan kembali password anda',
                      controller: controller.confirmPasswordController.value,
                      obscureText: controller.showConfirmPass.value,
                      suffixIcon: IconButton(
                        color: Colors.white,
                        onPressed: () => controller.showConfirmPass.value =
                            !controller.showConfirmPass.value,
                        icon: Icon(controller.showConfirmPass.value
                            ? EvaIcons.eye
                            : EvaIcons.eyeOff),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Konfirmasi password tidak boleh kosong';
                        } else {
                          if (value !=
                              controller.passwordController.value.text) {
                            return 'Konfirmasi password tidak cocok';
                          }
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    BaseFormGroupFieldAuth(
                      label: 'Kode Referral (Optional)',
                      hint: 'Scan atau masukkan kode referral anda',
                      controller: controller.barcodeController,
                      suffixIcon: IconButton(
                        color: Colors.white,
                        onPressed: controller.startScanning,
                        icon: const Icon(Icons.camera),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: Get.width,
                      child: BaseButton(
                        bgColor: whiteColor,
                        fgColor: blackColor,
                        label: 'Register',
                        onPressed: () {
                          if (controller.formKey.value.currentState!
                              .validate()) {
                            controller.register();
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const BaseText(
                          text: 'Sudah punya akun? ',
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () => Get.offAndToNamed('/login'),
                          child: const BaseText(
                            text: 'Masuk disini',
                            color: orangeColor,
                            bold: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
