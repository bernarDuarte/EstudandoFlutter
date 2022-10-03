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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Row(
            children: <Widget> [
              Text('hello'),
              Text('World'),


            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.amber,
            child: Text('hello - 20')
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.lime,
              child: Text('hello - 15'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            color: Colors.black,
            child: Text('hello - 25')
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed : () {},
        child: const Text('Clique'),
        backgroundColor: Colors.red[200],
      ),
    );
  }
}