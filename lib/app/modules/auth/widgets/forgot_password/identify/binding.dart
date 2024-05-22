import 'package:get/get.dart';
import 'package:member_rkm/app/data/providers/forgot_password/identify_provider.dart';
import 'package:member_rkm/app/modules/auth/widgets/forgot_password/identify/controller.dart';


class IdentifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IdentifyProvider>(() => IdentifyProvider());
    Get.lazyPut<IdentifyController>(() => IdentifyController(identifyProvider: Get.find()));
  }
}