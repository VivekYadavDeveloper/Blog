import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:bloc_learning/Core/Constant/strings.dart';
import 'package:bloc_learning/Data/DataSources/Remote/api.client.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.gr.dart';
import 'package:bloc_learning/Presentation/Screens/onboardScreen/widget/onboard.third.dart';
import 'package:bloc_learning/Presentation/Screens/onboardScreen/widget/onboarding.sec.dart';
import 'package:bloc_learning/Presentation/Screens/onboardScreen/widget/view.model.onboard.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import 'widget/onboarding.first.dart';

@RoutePage()
class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  OnBoardingViewModel onBoardingViewModel = OnBoardingViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(MyStrings.appTitle,
                        style: const TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  PageView(
                    controller: onBoardingViewModel.pageController,
                    children: const <Widget>[
                      OnBoardFirst(),
                      OnBoardSecond(),
                      OnBoardThird(),
                    ],
                  ).expand(flex: 1),
                  61.heightBox,
                  // ElevatedButton(
                  // onPressed: () =>
                  // AutoRouter.of(context).push(const AuthScreenRoute()),
                  // child: const Text("Get Started"),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      ApiClient().getTags();
                    },
                    child: const Text("Get Started"),
                  ),
                  61.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: () {}, child: const Text("Skip")),
                      SmoothPageIndicator(
                          controller: onBoardingViewModel.pageController,
                          effect: const WormEffect(),
                          count: 3),
                      TextButton(onPressed: () {}, child: const Text("Next")),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
