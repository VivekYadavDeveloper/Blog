import 'dart:developer';

import 'package:bloc_learning/Data/DataSources/Remote/api.constant.dart';
import 'package:bloc_learning/Data/DataSources/Remote/api.endpoint.urls.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiClient {
  getTags() async {
    final option = BaseOptions(baseUrl: ApiConstant.mainUrl);

    final dio = Dio(option);
    try {
      debugPrint("============ API   REQUEST=============");
      debugPrint("API REQUEST :${ApiConstant.mainUrl + ApiEndPoint.tags}");
      var response = await dio.get(ApiEndPoint.tags);
      debugPrint(response.statusCode.toString());
      debugPrint("============ API RESPONSE=============");
      log(response.data.toString());
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
    }
  }
}
