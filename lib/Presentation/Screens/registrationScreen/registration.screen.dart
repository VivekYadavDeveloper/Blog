import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Core/Constant/color.dart';
import '../../Router/router.imports.gr.dart';
import '../../Widgets/custom.textfield.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPassController = TextEditingController();
  final TextEditingController userConfiPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userEmailController.dispose();
    userPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadedScaleAnimation(
      child: Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: SafeArea(
          child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    "Namashakar",
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
                          "REGISTER HERE !",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 25.h),
                                CustomTextField.customTextField(
                                  textEditingController: userEmailController,
                                  hintText: "Email",
                                  validator: (val) =>
                                      !RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                              .hasMatch(val!)
                                          ? 'Enter An Email'
                                          : null,
                                ),
                                SizedBox(height: 25.h),
                                CustomTextField.customTextField(
                                  textEditingController: userPassController,
                                  hintText: "Password",
                                  validator: (val) =>
                                      val!.isEmpty ? 'Enter a password' : null,
                                ),
                                SizedBox(height: 25.h),
                                CustomTextField.customTextField(
                                  textEditingController: userConfiPassController,
                                  hintText: "Confirm Password",
                                  validator: (val) =>
                                      val!.isEmpty ? 'Enter a password' : null,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 250,
                                      child: CheckboxListTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Text("Remember Me"),
                                          value: false,
                                          onChanged: (value) {}),
                                    ),
                                    SizedBox(height: 45.h),
                                    //     InkWell(
                                    //         onTap: () {},
                                    //         child: const Text("Forgot Password"))
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Register"),
                                ),
                                SizedBox(height: 25.h),
                                "Already have an Account ?"
                                    .richText
                                    .size(14)
                                    .withTextSpanChildren(
                                  [
                                    TextSpan(
                                        text: "  Login",
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => AutoRouter.of(context)
                                              .push(const LoginScreenRoute())),
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
