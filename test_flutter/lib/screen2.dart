import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/quiz_screen.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Screen 2")),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(QuizScreen());
        },
        child: Text("Next"),
        backgroundColor: Colors.lightGreen[600],
      ),
    );
  }
}
