
import 'package:colorgenerate/Home/widgets/BlueContainer.dart';
import 'package:colorgenerate/Home/widgets/GreenContainer.dart';
import 'package:colorgenerate/Home/widgets/TextField.dart';
import 'package:colorgenerate/Home/widgets/YellowContainer.dart';
import 'package:colorgenerate/Home/widgets/enterText.dart';
import 'package:colorgenerate/consts/Colors.dart';
import 'package:colorgenerate/consts/SizedBox.dart';
import 'package:colorgenerate/consts/colorUpadte.dart';
import 'package:colorgenerate/consts/snackbar.dart';
import 'package:flutter/material.dart';

import '../unFocus.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color CurrentClr = myColors.myCurrent;
  TextEditingController myController = TextEditingController();
  InputBorder myBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      const Radius.circular(10.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final update = Update(
        onUpdateColor: (Color) {
          setState(() {
            CurrentClr = Color;
          });
        },
        context: context
    );
    return GestureDetector(
      onTap: () => unFocus(context),
      child: Scaffold(
        backgroundColor: CurrentClr,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextEnter(),
              SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: searchField(myController: myController, myBorder: myBorder, onSubmitted: update.updateClr,),
              ),
              MyBox(height: 5,),
              Text("Some Examples"),
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




