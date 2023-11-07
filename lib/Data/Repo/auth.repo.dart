import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

import '../DataSources/Remote/api.client.dart';
import '../DataSources/Remote/api.endpoint.urls.dart';
import '../Models/login.model.dart';

class AuthRepo extends ApiClient {
  AuthRepo();

  Future<LoginModel> loginUser(String email, String password,context) async {
    Map body = {
      "email": email,
      "password": password,
    };
    try {
      final response = await postRequest(path: ApiEndPoint.login, body: body);

      if (response.statusCode == 200) {
        /* 1st Solution To Convert The Object into String. */

        // final resData = loginModelFromJson(jsonEncode(response.data));
        // return resData;

        /* 2nd Way Is To Call The Direct From Model Class. */

        final resData = LoginModel.fromJson(response.data);
        // Vx.log(response);
        return resData;
      } else {
        LoginModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      VxToast.show(context, msg: e.toString());
      LoginModel();
    }
    return LoginModel();
  }
}
