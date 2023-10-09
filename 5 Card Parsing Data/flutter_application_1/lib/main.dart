import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(title: "Card & Parsing", home: new HalSatu()));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card & Parsing"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            new CardSaya(icon: Icons.home,teks: "Home",warnaIcon: Colors.brown,),
              new CardSaya(icon: Icons.favorite,teks: "Favorite",warnaIcon: Colors.red,),
               new CardSaya(icon: Icons.place,teks: "Place",warnaIcon: Colors.green,)
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {

  CardSaya({required this.icon,required this.teks, required this.warnaIcon});
  
  final IconData icon;
  final String teks;
  final Color warnaIcon;



  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
          child: new Column(
        
        children: [
          new Icon(icon, size: 50.0, color: warnaIcon),
          new Text(teks, style: new TextStyle(fontSize: 20.0,))
        ],
      )),
    );
  }
}
