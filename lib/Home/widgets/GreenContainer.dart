import 'package:flutter/material.dart';

import '../../consts/Colors.dart';

class GreenContainer extends StatelessWidget {
  const GreenContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.97,
      color: myColors.Cgreen,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("GREEN"),
            Spacer(),
            SelectableText("#00FF00")
          ],
        ),
      ),
    );
  }
}