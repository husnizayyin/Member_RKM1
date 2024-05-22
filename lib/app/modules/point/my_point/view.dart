/*
Note :
Jangan hapus MyPointHeader() dan ListPrize() karena itu variable pemanggil
untuk konten pada menu redeem, karena ini bersifat sementara/pre-launch jadi 
dihandle oleh variable PointHandling()
*/


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/components/base_appbar.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/handling/screen%20not%20available/point_handling.dart';

class MyPointPage extends StatelessWidget {
  const MyPointPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        bgColor: blackColor,
        fgColor: whiteColor,
        title: 'Poin',
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height * 0.885,
          width: Get.width,
          child: Column(
            children: [
              PointHandling()
              //Diganti module/point/my_point/view             

              //MyPointHeader(),
              //ListPrize(),
            ],
          ),
        ),
      ),
    );
  }
}
