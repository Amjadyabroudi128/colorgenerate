import 'package:colorgenerate/consts/BorderRadius.dart';
import 'package:colorgenerate/myContainer.dart';
import 'package:flutter/material.dart';

import '../../consts/Colors.dart';

class YellowContainer extends StatelessWidget {
  const YellowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String yellow = "YELLOW";
    return myContainer(
      decoration: Bdecoration(myColors.Cyellow, myBorder),
      child: Padding(
        padding: Edges,
        child: Row(
          mainAxisAlignment: kStart,
          children: [
            Text(yellow),
            Spacer(),
            SelectableText(myColors.yellowHex)
          ],
        ),
      ),
    );
  }
}
