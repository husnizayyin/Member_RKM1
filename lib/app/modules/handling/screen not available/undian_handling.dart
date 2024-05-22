import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/modules/dashboard/controller.dart';

class UndianHandling extends StatelessWidget {
  UndianHandling({super.key});
  final controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 150),
        SvgPicture.asset(
            'assets/images/undian_handling.svg',
             width: 50,
             alignment: Alignment.center,),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Coming Soon',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w800,

                ),
              ),
              Text(
                'Undian akan segera hadir untuk Anda,',
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w400
                ),
              ),
              Text(
                'Nantikan Segera ya!',
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
