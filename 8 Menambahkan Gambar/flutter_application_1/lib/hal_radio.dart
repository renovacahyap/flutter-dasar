import "package:flutter/material.dart";

class Radio extends StatelessWidget {
  const Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(children: [
         new Padding(padding: new EdgeInsets.all(20.0)),
        new Text('Radio', style: new TextStyle(fontSize: 30.0)),
        // new Icon(Icons.radio, size: 90.0),
        new Image(image: new NetworkImage('https://pngimg.com/uploads/radio/radio_PNG91621.png'),width: 200.0,),
        new Padding(padding: new EdgeInsets.all(20.0))
      ]),
    );
  }
}
