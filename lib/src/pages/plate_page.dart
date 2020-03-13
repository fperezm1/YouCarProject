import 'package:flutter/material.dart';

class HomePageP extends StatefulWidget {
  @override
  createState() => _HomePageP();
}


class _HomePageP extends State<HomePageP> {
  final _sizetexto = new TextStyle(fontSize: 60);
  final colorApp = Color.fromRGBO(33, 200, 19, 55);
  final colorBOX = const DecoratedBox(
    decoration: const BoxDecoration(color: Colors.black),
  );
  TextEditingController _textController;

  //@override
  //void dispose() {
    //_textController.dispose();
  //  super.dispose();
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 45.0),
          Container(
            padding: const EdgeInsets.all(32.0),
            alignment: Alignment.center,
            child: TextField(
              controller: TextEditingController(text: ''),
              style: _sizetexto,
              textAlign: TextAlign.center,
              maxLength: 6,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration.collapsed(hintText: "Placa")
            ),
          ),
          SizedBox(height: 4.0, width: 224.0, child: colorBOX),
          Container(
            padding: const EdgeInsets.all(32.0),
            alignment: Alignment.center,
            child: TextField(
              controller: TextEditingController(text: ''),
              style: _sizetexto,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(hintText: "Ciudad")
            ),
          ),
        ],
      )),
    );
  }
}
