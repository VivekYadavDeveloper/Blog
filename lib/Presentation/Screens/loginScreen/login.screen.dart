import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:bloc_learning/Data/ViewModel/login.view.model.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.gr.dart';
import 'package:bloc_learning/Presentation/Widgets/custom.textfield.dart';
import 'package:bloc_learning/utils/validation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginViewModel loginViewModel;

  @override
  void dispose() {
    // userEmailController.dispose();
    // userPassController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadedScaleAnimation(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primaryColor,
        body: SafeArea(
          child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    "Namashkar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                150.heightBox,
                Flexible(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.2.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: MyColors.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "LOGIN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp,
                          ),
                        ),
                        Form(
                          key: loginViewModel.formKey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 25.h),
                                CustomTextField.customTextField(
                                    textEditingController:
                                        loginViewModel.emailController,
                                    hintText: "Email",
                                    validator: (email) {
                                      if (email!.isEmpty) {
                                        return "Email Field Is Empty";
                                      } else if (!email.isValidEmail) {
                                        return "Invalid Email";
                                      }
                                      return null;
                                    }),
                                SizedBox(height: 25.h),
                                CustomTextField.customTextField(
                                    textEditingController:
                                        loginViewModel.passwordController,
                                    hintText: "Password",
                                    validator: (password) {
                                      if (password!.isEmpty) {
                                        return "Password Field Is Empty";
                                      }
                                      // else if (password.length < 8) {
                                      //   return "Password Should be 8 Letter";
                                      // }
                                      // else if (!password.isValidPassword) {
                                      //   return "Invalid Password";
                                      // }
                                      return null;
                                    }),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 250,
                                      child: CheckboxListTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: const Text("Remember Me"),
                                          value: false,
                                          onChanged: (value) {}),
                                    ),
                                    SizedBox(height: 45.h),
                                    InkWell(
                                        onTap: () {},
                                        child: const Text("Forgot Password"))
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (loginViewModel.formKey.currentState!
                                        .validate()) {
                                      loginViewModel.login(context);
                                    }
                                  },
                                  child: const Text("Login"),
                                ),
                                SizedBox(height: 25.h),
                                "Don't have an Account ?"
                                    .richText
                                    .size(14)
                                    .withTextSpanChildren(
                                  [
                                    TextSpan(
                                        text: " Sign Up",
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => AutoRouter.of(context)
                                              .push(
                                                  const RegistrationScreenRoute())),
                                  ],
                                ).makeCentered()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
