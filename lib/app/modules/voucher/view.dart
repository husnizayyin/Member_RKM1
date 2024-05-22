/* Note :
Jangan hapus ListVoucher() karena itu variable pemanggil
untuk konten pada menu redeem, karena ini bersifat sementara/pre-launch jadi 
dihandle oleh variable VoucherHandling()*/


import 'package:flutter/material.dart';
import 'package:member_rkm/app/components/base_appbar.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/handling/screen%20not%20available/voucher_handling.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        bgColor: blackColor,
        fgColor: whiteColor,
        title: 'Voucher',
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BaseText(
                  //   text: 'Scan Barcode untuk mendapatkan Hadiah',
                  //   size: 16,
                  //   bold: FontWeight.w600,
                  // ),
                  // BaseText(
                  //   text: 'Lihat list voucher undian anda disini!',
                  //   size: 12,
                  //   color: greyTextColor,
                  // ),
                ],
              ),
            ),
          ),
          //ListVoucher(),
          //module/voucher/view
          VoucherHandling()

        ],
      ),
    );
  }
}
