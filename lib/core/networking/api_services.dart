import 'package:dio/dio.dart';
import 'package:dubli/core/networking/end_boint.dart';

class ApiServices {
  static Dio? _dio;

  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Map<String, dynamic>> postData(
      {required String endpoint,
      required Object? data,
      String? token,
      Options? options}) async {
    _dio?.options.headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    var response = await _dio!.post(endpoint, data: data, options: options);
    return response.data;
  }

  static Future<Map<String, dynamic>> postFormData({
    required String endpoint,
    required FormData formData,
    String? token,
  }) async {
    _dio?.options.headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'multipart/form-data',
    };
    var response = await _dio!.post(
      endpoint,
      data: formData,
    );
    return response.data;
  }

  static Future<Map<String, dynamic>> getData({
    required String endpoint,
    Map<String, String>? data,
    String? token,
    Map<String, dynamic>? queryParameters,
  }) async {
    _dio!.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var response = await _dio!.get(
      endpoint,
      queryParameters: queryParameters,
      data: data,
    );
    return response.data;
  }
}
