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
        children: <Widget> [
              Expanded(
                  flex:5,
                  child: Image.asset('assets/3d-hyperspace-background-with-warp-tunnel-effect.jpg')

              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: Text('1'),
                ),
              ),
              Expanded(
                flex:2,
                child: Container(
                   padding: EdgeInsets.all(30.0),
                   color: Colors.grey,
                   child: Text('2'),
                 ),
              ),
              Expanded(
                flex:1,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.amberAccent,
                  child: Text('3'),
                ),
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