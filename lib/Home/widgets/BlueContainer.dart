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
    return myContainer(
      decoration: BoxDecoration(
        color: myColors.Cblue,
        borderRadius: myBorder
      ),
      child: Padding(
        padding: Edges,
        child: Row(
          mainAxisAlignment: kStart,
          children: [
            Text("BLUE"),
            Spacer(),
            SelectableText("#0000FF")
          ],
        ),
      ),
    );
  }
}
