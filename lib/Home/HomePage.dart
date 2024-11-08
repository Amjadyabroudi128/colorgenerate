import 'dart:ffi';

import 'package:colorgenerate/Home/widgets/TextField.dart';
import 'package:colorgenerate/Home/widgets/enterText.dart';
import 'package:flutter/material.dart';

import '../unFocus.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color CurrentClr = Colors.white;
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
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('should be at least 6 charachters')),
        );
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
              SizedBox(height: 5,),
              Text("Some Examples"),
              SizedBox(height: 9,),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.97,
                color: Colors.blue,
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
              ),
              SizedBox(height: 7,),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.97,
                color: Colors.yellow,
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
              SizedBox(height: 7,),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.97,
                color: Colors.green,
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


