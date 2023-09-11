import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  var cont = TextEditingController();

  var name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 3"),
      ),
      body: Column(
        children: [
          TextField(
            controller: cont,
          ),
          MaterialButton(
            onPressed: () {
              name = cont.text;
              setState(() {});
            },
            child: Text("Show"),
            color: Colors.blueAccent,
            textColor: Colors.white,
          ),
          Text(name),
        ],
      ),
    );
  }
}
