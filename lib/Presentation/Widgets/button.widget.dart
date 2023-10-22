import 'package:flutter/material.dart';

import '../../Core/Constant/color.dart';

class OutlineCustomButton extends StatelessWidget {
  const OutlineCustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: MyColors.whiteColor))),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class PrimaryCustomButton extends StatelessWidget {
  const PrimaryCustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: MyColors.whiteColor))),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
