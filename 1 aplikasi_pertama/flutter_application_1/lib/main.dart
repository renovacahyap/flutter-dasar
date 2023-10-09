import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: new HalHello(),
  ));
}


class HalHello extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Center(
        child: new Text("Hello World"),
      ),
    );
  }
}