
import 'package:colorgenerate/Home/widgets/TextField.dart';
import 'package:colorgenerate/Home/widgets/enterText.dart';
import 'package:colorgenerate/consts/Colors.dart';
import 'package:colorgenerate/consts/SizedBox.dart';
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

  void UpdateClr (String ColorCode) {
    final myPattern = RegExp(r'^[A-Fa-f0-9]{6}$').hasMatch(ColorCode);
    try {
      if(ColorCode.startsWith("#")) {
        ColorCode = ColorCode.substring(1);
      }
      if (ColorCode.length == 6 || myPattern) {
        print("Color is valid");
      } else if (ColorCode.length < 6) {
        showSnackBar("should be at least 6 charachters", context);
        setState(() {
        });
        return;
      }
      final color = Color(int.parse("FF$ColorCode", radix: 16));
      setState(() {
        CurrentClr = color;
      });
    } catch (e) {
      setState(() {
        CurrentClr = CurrentClr;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
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
                child: searchField(myController: myController, myBorder: myBorder, onSubmitted: UpdateClr,),
              ),
              MyBox(height: 5,),
              Text("Some Examples"),
              MyBox(height: 9,),
              BlueContainer(),
              MyBox(height: 7,),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.97,
                color: myColors.Cyellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("YELLOW"),
                      Spacer(),
                      SelectableText("#FFFF00")
                    ],
                  ),
                ),
              ),
              MyBox(height: 7,),
              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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


