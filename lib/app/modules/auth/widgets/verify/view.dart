import 'package:flutter/material.dart';
import 'package:member_rkm/app/components/base_appbar.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/auth/components/verify/verify_body.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        bgColor: baseBgScaffold,
        title: '',
        preferredSize: Size.zero,
      ),
      backgroundColor: baseBgScaffold,
      body: VerifyBody(),
    );
  }
}
