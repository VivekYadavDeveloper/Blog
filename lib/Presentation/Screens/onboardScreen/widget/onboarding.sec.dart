import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/img/img2.png",
          height: 333,
          width: 333,
        ),
        "Customize your reading experience and join the conversation by creating an account."
            .text
            .size(15)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
