import'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar:AppBar(
          title: Text('Dicegame'),
          backgroundColor: Colors.blue,
        ),
          body: DiceGame(),
      ),
    ),
  );
}
class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdice=1;
  int rightdice=1;
  void diceface(){
    setState(() {
      leftdice= Random().nextInt(6)+1;
      rightdice= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
            children: <Widget>[
        Expanded(
        child: FlatButton(
            onPressed: ()
        {
          diceface();
        },
        child: Image.asset('image/dice$leftdice.png')
    ),),
    Expanded(
    child: FlatButton(
    onPressed: ()
    {
      diceface();
    },
    child: Image.asset('image/dice$rightdice.png')
    ),),
    ],
    ),
    );
  }
}



