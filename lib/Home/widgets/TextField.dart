import 'package:flutter/material.dart';

class searchField extends StatelessWidget {
  const searchField({
    super.key,
    required this.myController,
    required this.myBorder, this.onSubmitted,
  });

  final TextEditingController myController;
  final InputBorder myBorder;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
          border: myBorder,
          focusedBorder: myBorder
      ),
      onSubmitted: onSubmitted,
    );
  }
}
