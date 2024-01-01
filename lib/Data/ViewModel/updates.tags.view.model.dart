import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Data/Models/tags.model.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class UpdateTagsViewModel {
  final Repository repository;

  UpdateTagsViewModel({required this.repository});

  final TextEditingController updateTagsController = TextEditingController();

  updateTags(context,String id) async {
    var updateTagsData = await repository.tagsRepo.updateTags(
      id,updateTagsController.text,
      updateTagsController.text.toLowerCase().replaceAll(" ", "-"),
    );
    if (updateTagsData.status == 1) {
      VxToast.show(context, msg: updateTagsData.message.toString());
      var newData = await repository.tagsRepo.getAllTags();
      AutoRouter.of(context).pop<TagsModel>(newData);
    }
  }
}
