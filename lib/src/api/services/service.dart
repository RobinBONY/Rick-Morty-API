import 'package:dio/dio.dart';

abstract class Service {
  static final Dio _dio = Dio();

  Future<List<Map<String, dynamic>>> get(String url) async {
    try {
      List<Map<String, dynamic>> result = [];
        var response = await _dio.get(url);
        try {
          result.addAll(
              List<Map<String, dynamic>>.from(response.data["results"]));
        } catch (e) {
          result.addAll(List<Map<String, dynamic>>.from(response.data));
        }
      return result;
    } on DioException {
      rethrow;
    }
  }
}