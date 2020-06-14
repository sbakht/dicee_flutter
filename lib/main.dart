import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: randomize,
                child: Image.asset('images/dice$left.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: randomize,
                child: Image.asset('images/dice$right.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void randomize() {
    setState(() {
      left = Random().nextInt(5) + 1;
      right = Random().nextInt(5) + 1;
    });
  }
}
