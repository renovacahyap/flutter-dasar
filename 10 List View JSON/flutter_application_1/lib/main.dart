import 'package:flutter/material.dart';
import 'package:sky_engine/_http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main(List<String> args) {
  runApp(new MaterialApp(
    title: "List View JSON",
    home: new Home(),
  ));
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List dataJSON;

  FutureOr<String> ambildata() async{
    http.HttpResponse hasil = await http.get(Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
    headers:{"Accept": "application/json"});

    this.setState(() {
      dataJSON = JSON.decode(hasil.body);
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    this.ambildata();
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text("List Data JSON"),),
      
      
      body: new ListView.builder(
        itemCount: data == null ? 0 :  dataJSON.length,
      itemBuilder: (context, i){
        return 
        
        new Container(
          padding: new EdgeInsets.all(20.0),
          child:  Card(
          child: 
          new Container(
             padding: new EdgeInsets.all(20.0),
            child:   new Column(
              
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                dataJSON[i]['title'],
                style: new TextStyle(fontSize: 20.0,
                color: Colors.blue)
              ),
                Text(dataJSON[i]['body'])
         
            ],
          )
         ,
          )
          )
,
        )
        
       
      },),
    );
  }
}
