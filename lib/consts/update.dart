import 'package:flutter/material.dart';
import 'package:colorgenerate/consts/snackbar.dart';
import 'package:colorgenerate/consts/Colors.dart';
class myUpdate {
 static Color updateClr(String colorCode, BuildContext context) {
    final myPattern = RegExp(r'^[A-Fa-f0-9]{6}$').hasMatch(colorCode);
    try {
      if (colorCode.startsWith("#")) {
        colorCode = colorCode.substring(1);
      }
      if (colorCode.length == 6 || myPattern) {
        print("Color is valid");
      } else if (colorCode.length < 6) {
        showSnackBar("Should be at least 6 characters", context);
        return myColors.myCurrent; // Return the original color if invalid
      }
      return Color(int.parse("FF$colorCode", radix: 16));
    } catch (e) {
      return myColors.myCurrent; // Return the original color on exception
    }
  }
}

