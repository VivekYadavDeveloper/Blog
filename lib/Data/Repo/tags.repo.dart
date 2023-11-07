import 'package:bloc_learning/Data/DataSources/Remote/api.client.dart';
import 'package:bloc_learning/Data/DataSources/Remote/api.endpoint.urls.dart';
import 'package:bloc_learning/Data/Models/tags.model.dart';
import 'package:velocity_x/velocity_x.dart';

class TagsRepo extends ApiClient {
  TagsRepo();

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
}
