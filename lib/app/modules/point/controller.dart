import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/core/values/snackbars.dart';
import 'package:member_rkm/app/data/models/prizelist.dart';
import 'package:member_rkm/app/data/providers/point_provider.dart';

class PointController extends GetxController {
  final PointProvider pointProvider;

  PointController({required this.pointProvider});

  final searchPrizeController = TextEditingController().obs;
  final searchPrize = Rx<String?>(null);

  final formKeyCabang = GlobalKey<FormState>().obs;
  final selectCity = Rx<String?>(null);
  final selectCabang = Rx<String?>(null);

  final prize = <Prize>[].obs;
  final prizeLoading = true.obs;
  final listPrize = <Prize>[].obs;

  @override
  void onInit() async {
    await fetchPrizeList();
    super.onInit();
  }

  @override
  void onClose() {
    prize.clear();
    searchPrizeController.value.dispose();
    super.onClose();
  }

  Future<void> fetchPrizeList() async {
    prizeLoading.value = true;

    try {
      final response = await pointProvider.fetchPrizeList();
      final List<Prize> body = response.data['data'] == null
          ? []
          : listPrizeFromJson(jsonEncode(response.data['data']));

      prize.value = body;
      print(response.data['data']);
    } on DioException catch (e) {
      failedSnackbar(
        'Ups sepertinya terjadi kesalahan',
        'code:${e.response?.statusCode}',
      );
    } finally {
      prizeLoading.value = false;
      update();
    }
  }
}
