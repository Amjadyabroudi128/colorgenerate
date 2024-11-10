import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final double? height;
  final double? width;
  const MyBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
