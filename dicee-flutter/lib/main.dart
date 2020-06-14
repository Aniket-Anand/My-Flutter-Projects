import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
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
  int leftbutton = 5;
  int rightbutton = 3;

  void changes() {
    setState(() {
      leftbutton = Random().nextInt(6) + 1;
      rightbutton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changes();
              },
              child: Image(
                image: AssetImage('images/dice$leftbutton.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changes();
              },
              child: Image(
                image: AssetImage('images/dice$rightbutton.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
