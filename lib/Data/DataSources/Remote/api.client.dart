import 'dart:developer';

import 'package:bloc_learning/Data/DataSources/Remote/api.constant.dart';

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

  // Get Request oF Tags
  Future<Response> getTagsRequest({required String path}) async {
    try {
      debugPrint("============ API TAGS REQUEST =============");
      // log("API REQUEST : =========> ${baseOptions.baseUrl + path}");
      var response = await dio.get(path);
      debugPrint(response.statusCode.toString());
      debugPrint("============ API TAGS RESPONSE =============");
      log(response.data.toString());
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint(e.response!.data);
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

  // Post Request oF Tags
  Future<Response> postTagsRequest({
    required String path,
    required dynamic body,
  }) async {
    final option = Options(headers: {
      "Authorization": "Bearer 274|AeKcNkBahdqj78WtcO83R318CO72pDpvK0Tm7EDy"
    });
    try {
      debugPrint("============ API POST TAGS REQUEST =============");
      log("API REQUEST : =========> ${baseOptions.baseUrl + path}");
      var response = await dio.post(path, data: body);
      debugPrint(response.statusCode.toString());
      debugPrint("============ API POST TAGS RESPONSE =============");
      log(response.data.toString());
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint(e.response!.data);
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
}
