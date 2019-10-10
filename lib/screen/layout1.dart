import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                CircleWidget(
                  color: Colors.grey,

                ),
                CircleWidget(),
              ],
            ),
          ),
          CircleWidget(),
          Expanded(
            child: Row(
              children: <Widget>[
                CircleWidget(),
                CircleWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  CircleWidget({this.color, this.widget});

  final Color color;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: widget,
          decoration: new BoxDecoration(
              color: color,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
        ),
      ),
    );
  }
}
