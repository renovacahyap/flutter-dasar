import 'package:flutter/material.dart';

import './hal_komputer.dart' as hk;
import './hal_headset.dart' as hh;
import './hal_radio.dart' as hr;
import './hal_smartphone.dart' as hs;





void main(List<String> args) {
  runApp(new MaterialApp(
    title: "Menambahkan Gambar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Daftar Elektronik"),
        backgroundColor: Colors.amber,
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),text: "Komputer",),
            new Tab(icon: new Icon(Icons.headset),text: "Headset"),
            new Tab(icon: new Icon(Icons.radio),text: "Radio"),
            new Tab(icon: new Icon(Icons.phone),text: "Phone"),
          ]),
      ),



      body: new TabBarView(
        controller: controller,
        children: [
          new hk.Komputer(),
          new hh.Headset(),
          new hr.Radio(),
          new hs.Smartphone()
        ],
      ),


      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer)),
            new Tab(icon: new Icon(Icons.headset)),
            new Tab(icon: new Icon(Icons.radio)),
            new Tab(icon: new Icon(Icons.phone)),
          ]),
      ),
    );
  }
}