import 'package:colorgenerate/consts/BorderRadius.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';

class AppTheme {
  static final themeData = ThemeData().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      border: meBorder,
      focusedBorder: meBorder,
      enabledBorder: meBorder,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: myColors.cursor,
      selectionHandleColor: myColors.cursor,
    )
  );

}