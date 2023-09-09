import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[600],
      ),
      body: Align(
          alignment: Alignment.topCenter,
          child: Text(
            "Hey, Just Testing",
            style: ,
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.lightGreen[600],
      ),
    );
  }
}
