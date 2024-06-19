import 'package:dio/dio.dart';
import 'package:member_rkm/app/core/utils/api_url.dart';
import 'package:member_rkm/app/core/utils/dio_client.dart';

class PointProvider extends DioClient {
  Future<Response> fetchPrizeList() async {
    return await get(EndPoint.prizeList);
  }
}
