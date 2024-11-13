import 'package:colorgenerate/myContainer.dart';
import 'package:flutter/material.dart';

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
        borderRadius: BorderRadius.all(
          Radius.circular(12)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
