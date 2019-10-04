import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

class MyGame extends StatefulWidget {
  MyGame({this.title});

  final String title;

  @override
  _MyGameState createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {

  int leftDiceNumber;
  int rightDiceNumber;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    randomMe();
  }

  final Color myColor= Colors.orangeAccent;


  void randomMe()
  {
    leftDiceNumber=Random().nextInt(6)+1;
    rightDiceNumber=Random().nextInt(6)+1;
  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: myColor,
      appBar: AppBar(
        backgroundColor: myColor,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                   randomMe();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                  randomMe();
                  });
                },

                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
