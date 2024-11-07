import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const MyHomePage(),
    );
  }
}

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
    try {
      if(ColorCode.startsWith("#")) {
        ColorCode = ColorCode.substring(1);
      }
      final color = Color(int.parse("FF$ColorCode", radix: 17));
      setState(() {
        CurrentClr = color;
      });
    } catch (e) {
      setState(() {
        CurrentClr = Colors.white;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('enter a valid color code')),
      );
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
              const Text(
                'Enter Hex Code to change backGround Color',
              ),
              SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.tag),
                    border: myBorder,
                    focusedBorder: myBorder
                    ),
                  onSubmitted: UpdateClr,
                  ),
                ),
              Text("Current Color is $CurrentClr")
            ],
          ),
        ),
      ),
    );
  }
}
unFocus (context) {
  return FocusScope.of(context).requestFocus(FocusNode());
}
