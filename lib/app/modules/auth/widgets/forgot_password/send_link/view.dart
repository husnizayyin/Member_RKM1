import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/auth/components/forgot_password/form_sendlink.dart';

class SendLinkPage extends StatelessWidget {
  const SendLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseBgScaffold,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Positioned(
                top: 120,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 230,
                ),
              ),
              FormSendLink(),
            ],
          ),
        ),
      ),
    );
  }
}
