import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class AddTagsViewModel {
  final Repository repository;

  AddTagsViewModel({required this.repository});

  final TextEditingController addTagsController = TextEditingController();

  addNewTags(context) async {
    var addNewTagsData = await repository.tagsRepo.addNewTags(
        addTagsController.text,
        addTagsController.text.toLowerCase().replaceAll(" ", "-"));
    if (addNewTagsData.status == 1) {
      VxToast.show(context, msg: addNewTagsData.message.toString());
    }
  }
}
