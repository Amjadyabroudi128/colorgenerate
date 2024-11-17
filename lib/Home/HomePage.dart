
import 'package:colorgenerate/Home/widgets/BlueContainer.dart';
import 'package:colorgenerate/Home/widgets/GreenContainer.dart';
import 'package:colorgenerate/Home/widgets/TextField.dart';
import 'package:colorgenerate/Home/widgets/YellowContainer.dart';
import 'package:colorgenerate/Home/widgets/enterText.dart';
import 'package:colorgenerate/consts/BorderRadius.dart';
import 'package:colorgenerate/consts/Colors.dart';
import 'package:colorgenerate/consts/SizedBox.dart';
import 'package:colorgenerate/consts/snackbar.dart';
import 'package:flutter/material.dart';

import '../consts/update.dart';
import '../unFocus.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color CurrentClr = myColors.myCurrent;
  TextEditingController myController = TextEditingController();
  void handleUpdateColor(String colorCode) {
    setState(() {
      CurrentClr = myUpdate.updateClr(colorCode, context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(context),
      child: Scaffold(
        backgroundColor: CurrentClr,
        body: Center(
          child: Column(
            mainAxisAlignment: Kcentre,
            children: <Widget>[
              TextEnter(),
              SizedBox(),
              Padding(
                padding: Edges,
                child: searchField(myController: myController, onSubmitted: handleUpdateColor,),
              ),
              MyBox(height: 5,),
              Text("Some Examples", style: TextStyle(fontSize: 14, color: Colors.grey.shade800),),
              MyBox(height: 9,),
              BlueContainer(),
              MyBox(height: 7,),
              YellowContainer(),
              MyBox(height: 7,),
              GreenContainer(),
            ],
          ),
        ),
      ),
    );
  }
}




