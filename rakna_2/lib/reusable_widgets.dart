import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';

Container reusableTextField(String name , bool isPassword, IconData iconShape,TextEditingController controller){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0).r,
        boxShadow: [
          BoxShadow(
              color: Colors.black45,
              offset: const Offset(0, 1),
              blurRadius: 12.0.r)
        ]),
    child: TextFormField(
      controller: controller,
      // keyboardType: TextInputType.visiblePassword,
      obscureText: isPassword,
      onFieldSubmitted: (value) {
        print(value);
      },
      decoration:  InputDecoration(
          labelText: name,
          labelStyle: const TextStyle(color: lightGreyReceiptBG),
          prefixIcon:  Icon(
            iconShape,
            color: Colors.black,
          ),
          // suffixIcon:
          // Icon(Icons.remove_red_eye, color: Colors.black),
          border: InputBorder.none
  ),
    ),
  );
}