import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.gr.dart';
import 'package:bloc_learning/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileViewModel {
  final Repository repository;

  ProfileViewModel({required this.repository});

  logout(context) async {
    var data = await repository.authRepo.logoutUser(context);
    if (data.message.isNotEmptyAndNotNull) {
      Utils.removeAllToken();
      VxToast.show(context, msg: data.message.toString());
      AutoRouter.of(context).push(const AuthScreenRoute());
    }
  }
}
