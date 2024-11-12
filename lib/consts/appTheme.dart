import 'package:flutter/material.dart';

import 'Colors.dart';

class AppTheme {
 static final InputBorder myBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      const Radius.circular(10.0),
    ),
  );
  static final themeData = ThemeData().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      border: myBorder,
      focusedBorder: myBorder,
      enabledBorder: myBorder,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: myColors.cursor,
      selectionHandleColor: myColors.cursor,
    )
  );

}