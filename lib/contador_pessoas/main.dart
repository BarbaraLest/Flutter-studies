import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de pessoas",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  String _infoText = "Pode entrar";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text("Pessoa: $_people",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            FlatButton(
              child: Text("1-",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  )),
              onPressed: () {
                _changePeople(1);
              },
            ),
            FlatButton(
              child: Text("1+",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  )),
              onPressed: () {
                _changePeople(-1);
              },
            ),
          ],
        ),
      ])
    ]);
  }
}
