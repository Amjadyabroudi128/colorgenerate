import 'package:colorgenerate/consts/BorderRadius.dart';
import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final Decoration? decoration;
  const myContainer({super.key, this.color, this.child, this.decoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      height: contHeight,
      width: MediaQuery.of(context).size.width * 0.97,
      color: color,
      child: child,
    );
  }
}
