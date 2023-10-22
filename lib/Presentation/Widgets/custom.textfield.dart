import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextField {
  static customTextField(
      {required TextEditingController textEditingController,
      required String hintText,
      int? maxLength,
      String? Function(String?)? validator,
      Function(String)? onChanged}) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(
        color: Colors.black,
      ),
      onChanged: onChanged,
      controller: textEditingController,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: MyColors.primaryColor,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            width: 1.5,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: MyColors.primaryColor),
        ),
      ),
    );
  }
}
