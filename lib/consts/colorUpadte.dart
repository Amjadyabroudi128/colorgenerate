import 'package:colorgenerate/consts/snackbar.dart';
import 'package:flutter/material.dart';

class Update {
  final Function(Color) onUpdateColor;
  final BuildContext context;

  Update({required this.onUpdateColor, required this.context});

  void updateClr(String colorCode) {
    final myPattern = RegExp(r'^[A-Fa-f0-9]{6}$').hasMatch(colorCode);
    try {
      if (colorCode.startsWith("#")) {
        colorCode = colorCode.substring(1);
      }
      if (colorCode.length == 6 && myPattern) {
        final color = Color(int.parse("FF$colorCode", radix: 16));
        onUpdateColor(color);
      } else if (colorCode.length < 6) {
        showSnackBar("Should be at least 6 characters", context);
      }
    } catch (e) {
      // Handle parsing or other errors, you could reset the color or keep it the same.
      onUpdateColor(Colors.black); // or any other default/fallback color
    }
  }
}
