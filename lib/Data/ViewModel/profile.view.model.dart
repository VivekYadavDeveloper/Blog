import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Data/Models/profile.model.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.gr.dart';
import 'package:bloc_learning/utils/utils.dart';

import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileViewModel {
  final Repository repository;

  ProfileViewModel({required this.repository});

  final VelocityBloc<ProfileModel> profileModelBloc =
      VelocityBloc<ProfileModel>(ProfileModel());

//**************************** PROFILE VIEW FUNCTION *************
  getUserProfileData() async {
    var userProfileData = await repository.postsRepo.getUserPosts();
    if (userProfileData.status == 1) {
      profileModelBloc.onUpdateData(userProfileData);
    }
  }

//**************************** LOG OUT VIEW FUNCTION *************
  logout(context) async {
    var data = await repository.authRepo.logoutUser(context);
    if (data.message.isNotEmptyAndNotNull) {
      Utils.removeAllToken();
      VxToast.show(context, msg: data.message.toString());
      AutoRouter.of(context).push(const AuthScreenRoute());
    }
  }
}
