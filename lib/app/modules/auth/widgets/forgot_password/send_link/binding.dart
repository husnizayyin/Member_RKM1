import 'package:get/get.dart';
import 'package:member_rkm/app/data/providers/forgot_password/sendlink_provider.dart';
import 'package:member_rkm/app/modules/auth/widgets/forgot_password/send_link/controller.dart';

class SendLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendLinkProvider>(() => SendLinkProvider());
    Get.lazyPut<SendLinkController>(() => SendLinkController(sendLinkProvider: Get.find()));
  }
}