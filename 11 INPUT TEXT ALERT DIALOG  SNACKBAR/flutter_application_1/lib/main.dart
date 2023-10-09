import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
      new MaterialApp(title: "Input text, Alert & snackbar", home: new Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String kntl = "";

  TextEditingController controllerInput = new TextEditingController();
  TextEditingController controllerAlert = new TextEditingController();
  TextEditingController controllerSnackbar = new TextEditingController();

  void _alertdialog(String str) {
    if (str.isEmpty) return;

    AlertDialog alertDialog = new AlertDialog(
      content: new Text(str, style: new TextStyle(fontSize: 20.0)),
      actions: [
        ElevatedButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );

    showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      },
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  void _snackbar(String str) {
    if (str.isEmpty) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      str,
      style: new TextStyle(fontSize: 20.0),
    ),
    duration: new Duration(seconds: 3),));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // key: _scaffoldState,
      appBar: new AppBar(
        title: new Text('INPUT TEXT, ALERT & SNACKBAR'),
        backgroundColor: Colors.purple,
      ),
      body: new Container(
        child: new Column(
          children: [
            new TextField(
              controller: controllerInput,
              decoration: new InputDecoration(hintText: "Tulis di sini"),
              onSubmitted: (String str) {
                setState(() {
                  kntl = str + '\n' + kntl;
                  controllerInput.text = "";
                });
              },
            ),
            new Text(kntl, style: new TextStyle(fontSize: 20.0)),
            new TextField(
              controller: controllerAlert,
              decoration: new InputDecoration(hintText: "Tulis untuk Alert.."),
              onSubmitted: (String str) {
                _alertdialog(str);
                controllerAlert.text = "";
              },
            ),
            new TextField(
              controller: controllerSnackbar,
              decoration:
                  new InputDecoration(hintText: "Tulis untuk Snackbar.."),
              onSubmitted: (String str) {
                _snackbar(str);
                controllerSnackbar.text = "";
              },
            ),
          ],
        ),
      ),
    );
  }
}
