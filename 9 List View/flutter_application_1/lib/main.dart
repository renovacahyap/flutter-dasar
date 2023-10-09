import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    title: "Daftar Tutorial",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber[900],
        title: new Text("Listview"),
      ),
      body: new ListView(
        children: [
          new ListTutorial(
              gambar:
                  'https://www.shareicon.net/data/128x128/2016/06/05/776003_logo_512x512.png',
              judul: "HTML"),
          new ListTutorial(
              gambar:
                  'https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582747_1280.png',
              judul: "CSS"),
          new ListTutorial(
              gambar:
                  'https://img.freepik.com/premium-vector/bootstrap-icon-b-letter-logo_781017-7.jpg',
              judul: 'Bootstrap'),
          new ListTutorial(
              gambar:
                  'https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png',
              judul: 'Javascript'),
          new ListTutorial(
              gambar:
                  'https://cdn-icons-png.flaticon.com/512/919/919830.png?w=740&t=st=1691738189~exp=1691738789~hmac=8eed6ab77135d167cd040e878b2fe25a5851bccb3b9c5ff1c6ef647cd7b398e3',
              judul: 'PHP'),
          new ListTutorial(
              gambar:
                  'https://logowik.com/content/uploads/images/flutter5786.jpg',
              judul: "Flutter")
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({required this.gambar, required this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Center(
            child: new Row(
          children: [
            new Image(
              image: new NetworkImage(gambar),
              width: 80.0,
            ),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Center(
                  child: new Column(
                children: [
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    'Ini adalah deskripsi Tutorial ... ',
                    style: new TextStyle(fontSize: 15.0, color: Colors.grey),
                  )
                ],
              )),
            )
          ],
        )));
  }
}
