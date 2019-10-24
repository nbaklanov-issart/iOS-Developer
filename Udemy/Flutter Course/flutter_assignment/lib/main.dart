import 'dart:developer';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {    
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _stateText = "Some Text From State";

  void changeText() {
    setState(() {      
      _stateText = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    log(_stateText) ; 
    return MaterialApp ( 
      home: Scaffold(
            appBar: AppBar(title: Text("My First assignment")),
            body: Column( 
              children: <Widget>[
                TextControl(_stateText),
                MyRaisedButton(changeText)
              ],
            )
      )      
    );
  }
}



class TextControl extends StatelessWidget {
  String _controlText = "Default Control Text";

  TextControl(this._controlText);

  @override
  Widget build(BuildContext context) {    
    return Column(
      children: <Widget>[
        Text(_controlText)
      ],
    );
  }
}


class MyRaisedButton extends StatelessWidget {
  Function _clickFunction;

  MyRaisedButton(this._clickFunction);
  
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: Text("Custom Button Text"),
      onPressed: _clickFunction,
    );
  }

}