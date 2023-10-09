import "package:flutter/material.dart";

class Smartphone extends StatelessWidget {
  const Smartphone({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(children: [
        new Padding(padding: new EdgeInsets.all(20.0)),
        new Text('Smartphone', style: new TextStyle(fontSize: 30.0)),
        // new Icon(Icons.phone, size: 90.0),
        new Image(image: new NetworkImage('https://www.pngkit.com/png/full/366-3669988_boost-your-expectations-smartphone.png'),width: 200.0),
        new Padding(padding: new EdgeInsets.all(20.0))
      ]),
    );
  }
}
