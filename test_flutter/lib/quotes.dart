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
  Widget quoteTemplate(quote, delete) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            MaterialButton(
              onPressed: delete,
              child: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }

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
            .map((quote) => quoteTemplate(
                  quote,
                  () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
