import 'package:flutter/material.dart';

import '../../consts/Colors.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.97,
      color: myColors.Cblue,
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
