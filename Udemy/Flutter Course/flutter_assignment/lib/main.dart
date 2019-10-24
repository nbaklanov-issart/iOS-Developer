// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My First assignment")),
            body: Column( 
              children: <Widget>[
                Text("This is default text"),
                RaisedButton(
                  child: Text("My Button"),
                  onPressed: () => {                    
                    setState(() {
                      _counter++;
                    });
                  },
                )
              ],
            )      
    );
  }
}