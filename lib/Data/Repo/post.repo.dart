import 'package:velocity_x/velocity_x.dart';

import '../DataSources/Remote/api.client.dart';
import '../DataSources/Remote/api.endpoint.urls.dart';
import '../Models/home.model.dart';
import '../Models/profile.model.dart';

class PostsRepo extends ApiClient {
  PostsRepo();

  ///*********************** Home Post Function ****************
  Future<HomeModel> getAllPosts() async {
    try {
      final response = await getRequest(path: ApiEndPoint.posts);

      if (response.statusCode == 200) {
        final resData = HomeModel.fromJson(response.data);
        Vx.log(response);
        return resData;
      } else {
        HomeModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      HomeModel();
    }
    return HomeModel();
  }

  ///*********************** User Profile Posts ********************
  Future<ProfileModel> getUserPosts() async {
    try {
      final response =
          await getRequest(path: ApiEndPoint.userPosts, isTokenRequired: true);
      if (response.statusCode == 200) {
        final resData = ProfileModel.fromJson(response.data);
        Vx.log(response);
        return resData;
      } else {
        ProfileModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      ProfileModel();
    }
    return ProfileModel();
  }
}
