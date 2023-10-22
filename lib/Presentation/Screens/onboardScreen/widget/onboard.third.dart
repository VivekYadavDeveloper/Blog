import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardThird extends StatelessWidget {
  const OnBoardThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/img/img2.png",
          height: 333,
          width: 333,
        ),
        "Explore a wide selection of categories, or use the search bar to find specific topics"
            .text
            .size(15)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
