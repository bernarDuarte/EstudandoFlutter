import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
        centerTitle:true,
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Hello'),
          TextButton(
            onPressed:() {},
            style : ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.amber),
            ),
            child: Text('click Me'),
          ),
          Container(
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(30.0),
            child : Text('Hello me'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {},
        child: const Text('Clique'),
        backgroundColor: Colors.red[200],
      ),
    );
  }
}