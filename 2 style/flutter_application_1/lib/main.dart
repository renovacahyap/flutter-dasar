import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home:new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: 
      new Container(
        color: Colors.amber,
        width: 200.0,
        height: 100.0,
        child: new Center(
          child: new Text("Renova Tutorial",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: "Serif",
            fontSize: 20.0),
          
        ),
      ),
      ),
    );
  }
}
