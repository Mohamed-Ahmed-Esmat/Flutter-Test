import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Hello World"),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blueGrey,
              child: Text("Hey"),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(30.0),
              child: Text("inside container"),
            )
          ],
        ),
      ),
    );
  }
}
