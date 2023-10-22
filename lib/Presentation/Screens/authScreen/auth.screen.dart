import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Widgets/button.widget.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/bg.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Spacer(flex: 1),
                "Explore The India, With Namshakar"
                    .text
                    .size(28.sp)
                    .white
                    .align(TextAlign.center)
                    .fontWeight(FontWeight.bold)
                    .make(),
                PrimaryCustomButton(
                  title: 'Login',
                  onPressed: () =>
                      AutoRouter.of(context).push(const LoginScreenRoute()),
                ),
                OutlineCustomButton(
                  title: 'Registration',
                  onPressed: () => AutoRouter.of(context)
                      .push(const RegistrationScreenRoute()),
                ),
                SizedBox(
                  height: 50.h,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
