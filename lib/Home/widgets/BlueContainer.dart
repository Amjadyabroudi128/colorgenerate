import 'package:colorgenerate/myContainer.dart';
import 'package:flutter/material.dart';

import '../../consts/BorderRadius.dart';
import '../../consts/Colors.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String BlueHex = "#0000FF";
    return myContainer(
      decoration: Bdecoration(myColors.Cblue, myBorder),
      child: Padding(
        padding: Edges,
        child: Row(
          mainAxisAlignment: kStart,
          children: [
            Text("BLUE"),
            Spacer(),
            SelectableText(BlueHex)
          ],
        ),
      ),
    );
  }
}
