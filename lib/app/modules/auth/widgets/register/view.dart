import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/auth/components/register/form_register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseBgScaffold,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: SafeArea(
            child: FormRegister(),
          ),
        ),
      ),
    );
  }
}
