import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;

  int _offset = 0;

  _getGiphys() async {
    http.Response response;

    if (_search == null)
      response = await http.get("aqui vai a url");
    else
      response = await http.get("a url de search");

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
