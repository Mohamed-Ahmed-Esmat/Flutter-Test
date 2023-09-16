import 'package:flutter/material.dart';

import 'quote.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(
        text: "The only way to do great work is to love what you do.",
        author: "Mohamed"),
    Quote(
        text: "In the middle of every difficulty lies opportunity.",
        author: "Ahmed"),
    Quote(
        text:
            "Success is not final, failure is not fatal: it is the courage to continue that counts.",
        author: "Emad")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: quotes
            .map((quote) => Text("${quote.text} - ${quote.author}"))
            .toList(),
      ),
    );
  }
}
