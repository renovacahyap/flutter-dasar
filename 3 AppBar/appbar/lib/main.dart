import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Cara membuat AppBar",
    home: new HalamanSatu(),

  ));
}


class HalamanSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home),
        title: new Center(child: new Text("Iseuwbahu")),
        actions: [
          new Icon(Icons.search)
        ],
      ),
    );
  }
}