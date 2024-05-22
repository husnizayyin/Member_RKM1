import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/components/base_button.dart';
import 'package:member_rkm/app/components/base_formgrouppin.dart';
import 'package:member_rkm/app/components/base_text.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/dashboard/controller.dart';
import 'package:member_rkm/app/modules/profile/controller.dart';

class DeleteAccountBody extends StatelessWidget {
  DeleteAccountBody({super.key});
  final controller = Get.find<ProfileController>();
  final userController = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseText(
                    text: 'Apakah anda yakin akan menghapus akun?',
                    size: 16,
                    color: whiteColor,
                    bold: FontWeight.w600,
                  ),
                  SizedBox(height: 5),
                  BaseText(
                    text:
                        'Menghapus akun tidak dapat dibatalkan dan pastinya anda akan kehilangan akun anda sekaligus berhenti menjadi bagian dari member RKM.',
                    size: 12,
                    color: greyTextColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            BaseText(
              text: controller.hasSent.value
                  ? 'Kode OTP sudah dikirim ke email'
                  : 'Kode OTP akan dikirim ke email',
              size: 12,
              color: greyTextColor,
            ),
            BaseText(
              text: userController.profile.value?.email ?? '',
              bold: FontWeight.w500,
            ),
            const SizedBox(height: 15),
            Visibility(
              visible: controller.hasSent.value,
              child: Expanded(
                child: Form(
                  key: controller.formKeyDeleteAccount.value,
                  child: BaseFormGroupPin(
                    label: 'Kode OTP',
                    controller: controller.otpController.value,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Masukkan kode OTP yang sudah dikirim';
                      }

                      return null;
                    },
                  ),
                ),
              ),
            ),
            if (controller.hasSent.isFalse) const Spacer(),
            SizedBox(
              width: Get.width,
              child: BaseButton(
                bgColor: whiteColor,
                fgColor: blackColor,
                label:
                    controller.hasSent.value ? 'Hapus Akun' : 'Kirim Kode OTP',
                onPressed: () {
                  if (controller.hasSent.value) {
                    if (controller.formKeyDeleteAccount.value.currentState
                            ?.validate() ??
                        false) {
                      controller.deleteAccount();
                    }
                  } else {
                    controller.sendOtpDeleteAccount();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
