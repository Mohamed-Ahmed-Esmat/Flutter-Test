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
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text("1"),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.blue,
                child: Text("2"),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.orange,
                child: Text("3"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
