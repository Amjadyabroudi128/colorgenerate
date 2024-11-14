
import 'package:flutter/material.dart';

BorderRadiusGeometry myBorder = BorderRadius.all(
    Radius.circular(12)
);
EdgeInsetsGeometry Edges = EdgeInsets.all(8.0);
MainAxisAlignment kStart = MainAxisAlignment.start;
Decoration Bdecoration(Color color, BorderRadiusGeometry borderRadius) {
  return BoxDecoration(
    color: color,
    borderRadius: borderRadius
  );
}