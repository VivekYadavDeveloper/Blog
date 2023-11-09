import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Data/Models/tags.model.dart';

import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Presentation/Router/router.imports.gr.dart';
import '../Repo/repo.dart';

class TagsViewModel {
  final Repository repository;

  TagsViewModel({required this.repository});

  final VelocityBloc<TagsModel> tagsModelBloc =
      VelocityBloc<TagsModel>(TagsModel());

  ///************* FETCH ALL TAGS FUNCTION **************
  fetchAllTags() async {
    var tagsData = await repository.tagsRepo.getAllTags();
    if (tagsData.status == 1) {
      tagsModelBloc.onUpdateData(tagsData);
    }
  }

  ///************* UPDATE/REFRESH ADD TAGS FUNCTION **************
  gotoAddTags(context) async {
    var addedData = await AutoRouter.of(context)
        .push<TagsModel>(const AddTagsScreenRoute());

    if (addedData != null) {
      tagsModelBloc.onUpdateData(addedData);
    }
  }

  //******************* DELETE TAGS UI UPDATE *****************
  deleteTags(String id, context, int index) async {
    var deleteData = await repository.tagsRepo.deleteTags(id);
    if (deleteData.status == 1) {
      VxToast.show(context, msg: deleteData.message!);

      tagsModelBloc.state.data.tags!.removeAt(index);
      tagsModelBloc.onUpdateData(tagsModelBloc.state.data);
    }
  }
}
