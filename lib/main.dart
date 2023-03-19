import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int dice1 = 1;
  int dice2 = 1;

  void changeDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Dice',
              style: TextStyle(
                fontSize: 60,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset(
                    'assets/images/Dice$dice1.png',
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset(
                    'assets/images/Dice$dice2.png',
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
