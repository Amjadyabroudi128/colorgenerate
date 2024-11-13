import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  Color color;
  const myContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.97,
    );
  }
}
