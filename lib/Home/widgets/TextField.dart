import 'package:flutter/material.dart';

class searchField extends StatelessWidget {
  const searchField({
    super.key,
    required this.myController,
    this.onSubmitted,
  });

  final TextEditingController myController;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
      ),
      onSubmitted: onSubmitted,
    );
  }
}
