import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/img/img1.png",
          height: 333,
          width: 333,
        ),
        "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community"
            .text
            .size(15)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
