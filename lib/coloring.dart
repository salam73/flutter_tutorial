import 'package:flutter/material.dart';


class Coloring extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',

      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body:
      new Container(
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          gradient: new RadialGradient(
            center: new Alignment(0.9, -0.5),
            radius: 1.8095412140627762,
            colors: [
            //  const Color(0xFFba5536),
              const Color(0xFFfaf212),
              const Color(0xFFb4d61b),
              const Color(0xFFd4df2c),
              const Color(0xFFb4d61b),
              const Color(0xFFb4d61b),
              const Color(0xFF921d1d),
              const Color(0xFF000000),
            ],
            stops: [
              0.1,
              0.2,
              0.2,
              0.4,
              0.5,
              0.6,
              0.7,
            //  1.0,
            ],
          ),
        ),
      ),

    );
  }
}