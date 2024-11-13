import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final Color? color;
  final Widget? child;
  const myContainer({super.key, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.97,
      color: color,
      child: child,
    );
  }
}
