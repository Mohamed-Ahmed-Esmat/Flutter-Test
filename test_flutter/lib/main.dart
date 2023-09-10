import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/screen1.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
