import 'package:bloc_learning/Data/DataSources/Remote/api.client.dart';
import 'package:bloc_learning/Data/DataSources/Remote/api.endpoint.urls.dart';
import 'package:bloc_learning/Data/Models/tags.model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Models/add.tags.model.dart';
import '../Models/delete.tags.model.dart';

class TagsRepo extends ApiClient {
  TagsRepo();

  ///*************************** GET ALL TAGS ******************
  Future<TagsModel> getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndPoint.tags);

      if (response.statusCode == 200) {
        /* 1st Solution To Convert The Object into String. */

        // final resData = tagsModelFromJson(jsonEncode(response.data));
        // return resData;

        /* 2nd Way Is To Call The Direct From Model Class. */

        final resData = TagsModel.fromJson(response.data);
        Vx.log(response);
        return resData;
      } else {
        TagsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }

  ///*************************** ADD NEW TAGS ******************
  Future<AddTagsModel> addNewTags(String title, String slug) async {
    Map body = {"title": title, "slug": slug};
    try {
      final response = await postRequest(
          path: ApiEndPoint.addTags, body: body, isTokenRequired: true);

      if (response.statusCode == 200) {
        final resData = AddTagsModel.fromJson(response.data);
        Vx.log(response);
        return resData;
      } else {
        AddTagsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      AddTagsModel();
    }
    return AddTagsModel();
  }

  ///*************************** DELETE TAGS ******************
  Future<DeleteModel> deleteTags(String id) async {
    try {
      final response = await postRequest(
          path: "${ApiEndPoint.deleteTags}/${id}", isTokenRequired: true);

      if (response.statusCode == 200) {
        final resData = DeleteModel.fromJson(response.data);
        Vx.log(response);
        return resData;
      } else {
        DeleteModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      DeleteModel();
    }
    return DeleteModel();
  }
}
