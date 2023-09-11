import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final countries = ['egypt', 'usa', 'france'];
  final cities = ['cairo', 'ws', 'paris'];
  final cont = TextEditingController();
  var question = '';
  var answer = '';
  var index = 0;
  var score = 0;
  var quizStarted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Quiz Screen")),
      ),
      body: Column(
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: cont,
            enabled: quizStarted,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  index = 0;
                  score = 0;
                  quizStarted = true;
                  question = 'what is the capital of ${countries[index]}';
                  setState(() {});
                },
                color: Colors.lightGreen,
                child: Text("Start"),
                textColor: Colors.white,
              ),
              MaterialButton(
                onPressed: !quizStarted
                    ? null
                    : () {
                        answer = cont.text;
                        if (answer == cities[index]) score++;
                        index++;
                        if (index < countries.length) {
                          question =
                              'what is the capital of ${countries[index]}';
                          setState(() {});
                        } else {
                          Get.snackbar("Score", "Score = $score",
                              snackPosition: SnackPosition.BOTTOM);
                          quizStarted = false;
                          setState(() {});
                        }
                        cont.clear();
                      },
                color: Colors.lightGreen,
                child: Text("Answer"),
                textColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
