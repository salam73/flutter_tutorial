import 'dart:math';

import 'package:flutter/material.dart';

class MyGame extends StatefulWidget {
  MyGame({this.title});

  final String title;



  @override
  _MyGameState createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  int leftDiceFace=3;
  int rightDiceFace=3;
  int leftDiceFace2=3;
  int rightDiceFace2=3;

  void changeFace()
  {


    leftDiceFace=Random().nextInt(6)+1;
    rightDiceFace=Random().nextInt(6)+1;
    leftDiceFace2=Random().nextInt(6)+1;
    rightDiceFace2=Random().nextInt(6)+1;
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeFace();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Game'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      changeFace();
                    });
                  },

                  child: Image.asset('images/dice$leftDiceFace.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      changeFace();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceFace.png'),
                ),
              ),
            ],
          ),

          Divider(),

          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      changeFace();
                    });
                  },

                  child: Image.asset('images/dice$leftDiceFace2.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      changeFace();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceFace2.png'),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
