import "dart:js";

import "package:flutter/material.dart";

void main(List<String> args) {
  runApp(new MaterialApp(
    title: "Routing",
    home: new HalSatu(),
    routes: <String, WidgetBuilder>{
      '/HalSatu': (BuildContext context) => new HalSatu(),
      '/HalDua': (BuildContext context) => new HalDua()
    },
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Halaman Satu")),
      body: new Center(
        child: new IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/HalDua');
            },
            icon: new Icon(
              Icons.arrow_right,
              size: 50.0,
            )),
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Halaman Dua")),
      body: new Center(
        child: new IconButton(
            onPressed: (){Navigator.pushNamed(context, '/HalSatu');
            },
            icon: new Icon(
              Icons.arrow_back_ios,
              size: 50.0,
            )),
      ),
    );
  }
}
