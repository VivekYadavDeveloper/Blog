import 'dart:developer';

import 'package:bloc_learning/Data/DataSources/Remote/api.constant.dart';
import 'package:bloc_learning/utils/utils.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api.exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    final baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseOptions);
  }

  Options options = Options();

  /// ****************** GET REQUEST************************
  Future<Response> getRequest({
    required String path,
    bool isTokenRequired = false,
  }) async {
    if (isTokenRequired == true) {
      var token = await Utils.getToken();
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Bearer $token"});
    }
    try {
      debugPrint("============ API REQUEST =============");

      // log("API REQUEST : =========> ${baseOptions.baseUrl + path}");

      var response = await dio.get(path, options: options);
      debugPrint(response.statusCode.toString());
      debugPrint("============ API RESPONSE =============");
      log(response.data.toString());
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.

      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
      throw ApiException(message: e.message);
    }
  }

  /// **************************** POST REQUEST **************************
  Future<Response> postRequest({
    required String path,
    dynamic body,
    bool isTokenRequired = false,
  }) async {
    if (isTokenRequired == true) {
      var token = await Utils.getToken();
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Bearer $token"});
    }
    // var token = await Utils.getToken();
    // final option = Options(headers: {"Authorization": "Bearer $token"});
    try {
      debugPrint("============ API POST REQUEST =============");

      // log("API REQUEST URLs : =========> ${baseOptions.baseUrl + path}");

      log("BODY : =========> $body");
      var response = await dio.post(path, data: body, options: options);
      debugPrint(response.statusCode.toString());
      debugPrint("============ API POST RESPONSE =============");
      log(response.data.toString());
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
      throw ApiException(message: e.message);
    }
  }
}
