import 'package:colorgenerate/consts/BorderRadius.dart';
import 'package:colorgenerate/myContainer.dart';
import 'package:flutter/material.dart';

import '../../consts/Colors.dart';

class GreenContainer extends StatelessWidget {
  const GreenContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return myContainer(
      decoration: Bdecoration(myColors.Cgreen, myBorder),
      child: Padding(
        padding: Edges,
        child: Row(
          mainAxisAlignment: kStart,
          children: [
            Text(myColors.sGreen),
            Spacer(),
            SelectableText(myColors.GreenHex)
          ],
        ),
      ),
    );
  }
}
