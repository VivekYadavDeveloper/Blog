import 'package:bloc_learning/Data/Models/tags.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_bloc/velocity_bloc.dart';

import '../Repo/repo.dart';

class TagsViewModel {
  final Repository repository;

  TagsViewModel({required this.repository});

  final VelocityBloc<TagsModel> tagsModelBloc =
      VelocityBloc<TagsModel>(TagsModel());



  fetchAllTags()async{
    var tagsData =await     repository.tagsRepo.getAllTags();
    if(tagsData.status==1){
      tagsModelBloc.onUpdateData(tagsData);
    }

  }
}
