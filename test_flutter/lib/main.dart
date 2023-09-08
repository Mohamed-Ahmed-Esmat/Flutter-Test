import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
          centerTitle: true,
        ),
        body: Center(
          child:  Text("This is my first flutter app")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Text("Click"),
        ),
      ),
  ));
}

