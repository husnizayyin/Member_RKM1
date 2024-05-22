import 'package:get/get.dart';
import 'package:member_rkm/app/data/providers/forgot_password/resetpassword_provider.dart';
import 'package:member_rkm/app/modules/auth/widgets/forgot_password/reset_password/controller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordProvider());
    Get.lazyPut(() => ResetPasswordController(resetPasswordProvider: Get.find()));
  }
}