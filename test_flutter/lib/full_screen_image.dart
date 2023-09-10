import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  const FullScreenImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Screen Image"),
      ),
      body: Image.asset(
        'assets/Screenshot (1).png',
        fit: BoxFit.contain,
      ),
    );
  }
}
