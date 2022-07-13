import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dice Roller"),
          centerTitle: true,
        ),
        body: Column(children: [
          SizedBox(height: 20),
          //Image
          //
          Center(
            child: Image.asset(
              "assets/$diceNumber.png",
              height: 250,
              width: 250,
            ),
          ),
          SizedBox(height: 30),
          //Button
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: Text(
              "Roll",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 70),
          //Text
          Text(
            "#FlutterWithVishnu",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ]));
  }
}
