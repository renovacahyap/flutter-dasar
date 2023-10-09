import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    title: "ListView",
    home: new Home(),
  ));
}


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber[900],
        title: new Text("Listview"),
      ),

      body: new ListView(
        children: [
          new ListTile(
            leading: new Icon(Icons.speaker),
            title: new Text("Speaker"),
          ),
           new ListTile(
            leading: new Icon(Icons.speaker),
            title: new Text("Speaker"),
          ),
          new ListTile(
            leading: new Icon(Icons.speaker),
            title: new Text("Speaker"),
          ),
          new ListTile(
            leading: new Icon(Icons.speaker),
            title: new Text("Speaker"),
          ),
          new ListTile(
            leading: new Icon(Icons.speaker),
            title: new Text("Speaker"),
          ),
          new ListTile(
            leading: new Icon(Icons.speaker),
            title: new Text("Speaker"),
          ),
          
          ],
          
      ),
    );
  }
}