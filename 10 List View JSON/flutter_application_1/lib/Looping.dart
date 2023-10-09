import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    title: "List View JSON",
    home: new Home(data: new List<String>.generate(300, (i) => "ini data ke $i"),),
  ));
}

class Home extends StatelessWidget {
  final List<String> data;
  Home({required this.data});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListView"),
      ),
      body: new Container(
          child: new ListView.builder(
        itemCount: data.length,
        itemBuilder: (Contex,index){
          return new ListTile(
            leading: new Icon(Icons.widgets),
            title: new Text("${data[index]}"),
          );
        },
      )),
    );
  }
}
