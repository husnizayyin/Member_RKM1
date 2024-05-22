import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/modules/dashboard/controller.dart';

class PointHandling extends StatelessWidget {
  PointHandling({super.key});
  final controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 150),
        SvgPicture.asset(
            'assets/images/point.svg',
             width: 50,
             height: 40,
             alignment: Alignment.center,),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sabar Dulu Ya',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w800,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                ),
              ),
              Text(
                'Kamu sudah menjadi bagain dari kami,',
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w400
                ),
              ),
              Text(
                'kami akan segera infoin, apabila hadiah sudah tersedia.',
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
