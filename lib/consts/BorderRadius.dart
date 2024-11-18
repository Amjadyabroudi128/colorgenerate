
import 'package:flutter/material.dart';

BorderRadiusGeometry myBorder = BorderRadius.all(
    Radius.circular(12)
);
EdgeInsetsGeometry Edges = EdgeInsets.all(8.0);
MainAxisAlignment kStart = MainAxisAlignment.start;
MainAxisAlignment Kcentre = MainAxisAlignment.center;
Decoration Bdecoration(Color color, BorderRadiusGeometry borderRadius) {
  return BoxDecoration(
    color: color,
    borderRadius: borderRadius
  );
}
double contHeight = 40;
double myWidth(context) {
  return MediaQuery.of(context).size.width * 0.97;
}