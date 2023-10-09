import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Cara membuat Row dan Column",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home),
        title: new Center(child: new Text("Iseuwbahu")),
        actions: [new Icon(Icons.search)],
      ),
      // body: new Row(
      //   children: [
      //     new Icon(
      //       Icons.local_pizza,
      //       size: 70.0,
      //       color: Colors.red,
      //     ),
      //     new Icon(
      //       Icons.donut_large,
      //       size: 70.0,
      //       color: Colors.red,
      //     ),
      //     new Icon(
      //       Icons.cake,
      //       size: 70.0,
      //       color: Colors.red,
      //     ),
      //     new Column(
      //       children: [
      //         new Icon(
      //           Icons.donut_large,
      //           size: 70.0,
      //           color: Colors.red,
      //         ),
      //         new Icon(
      //           Icons.donut_large,
      //           size: 70.0,
      //           color: Colors.red,
      //         ),
      //         new Icon(
      //           Icons.donut_large,
      //           size: 70.0,
      //           color: Colors.red,
      //         ),
      //       ],
      //     )
      //   ],
      // ),

      body: new Container(
        child: new Column(
          children: [
            new Row(children: [
              new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
              new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
              new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
            ]),
            new Row(children: [
              new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
              new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
              new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
            ]),
            new Row(children: [
              new Column(
                children: [
                  new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
                  new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
                  new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
                ],
              )
            ]),
              // new Column(
              //   children: [
              //     new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
              //     new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
              //     new Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
              //   ],
              // ),
          ],
        ),
      ),
    );
  }
}
