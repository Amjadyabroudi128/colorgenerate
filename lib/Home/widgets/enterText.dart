import 'package:colorgenerate/consts/textStyle.dart';
import 'package:flutter/material.dart';

class TextEnter extends StatelessWidget {
  const TextEnter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Enter Hex Code to change backGround Color',
      style: enter,
    );
  }
}
