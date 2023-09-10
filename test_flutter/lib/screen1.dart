import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/full_screen_image.dart';
import 'package:test_flutter/screen2.dart';

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
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Get.to(FullScreenImage());
            },
            child: Image.asset(
              'assets/Screenshot (1).png',
              width: double.infinity,
              height: 500,
              // fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Hello World",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Screen2());
        },
        child: Text("Next"),
        backgroundColor: Colors.lightGreen[600],
      ),
    );
  }
}
