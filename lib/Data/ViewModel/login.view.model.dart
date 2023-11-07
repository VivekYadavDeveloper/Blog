import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:bloc_learning/utils/utils.dart';
import 'package:flutter/cupertino.dart';

import '../../Presentation/Router/router.imports.gr.dart';

class LoginViewModel {
  final Repository repository;

  LoginViewModel({required this.repository});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  login(context) async {
    var loginData = await repository.authRepo
        .loginUser(emailController.text, passwordController.text, context);

    if (loginData.accessToken != null) {
      Utils.saveToken(loginData.accessToken.toString());
      AutoRouter.of(context).push(const BottomNavigationBarRoute());
    }
  }
}
