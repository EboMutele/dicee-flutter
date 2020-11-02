import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice"93'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '#Click to roll a Dice! 😉',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 23.0,
          ),
        ),
        SizedBox(
          height: 31,
          child: Container(
            width: 150,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
            color: Colors.white24,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                 child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    rollDice();
                  },),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


