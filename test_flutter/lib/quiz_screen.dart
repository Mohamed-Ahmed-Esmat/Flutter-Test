import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
  var lastScore = 0;
  var index = 0;
  var score = 0;
  var quizStarted = false;
  var scoreList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final box = GetStorage();
    lastScore = box.read("score");
    setState(() {});
  }

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
            decoration: const InputDecoration(
              hintText: 'Enter your answer here',
              hintStyle: TextStyle(
                color: Colors.grey, // Customize the color of the hint text
                fontSize: 16, // Customize the font size of the hint text
              ),
            ),
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
                          scoreList.add(score);
                          final box = GetStorage();
                          box.write('score', score);
                          setState(() {});
                        }
                        cont.clear();
                      },
                color: Colors.lightGreen,
                child: Text("Answer"),
                textColor: Colors.white,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (a, b) {
                return ListTile(
                  leading: Text("Turn ${b + 1}"),
                  trailing: Text("${scoreList[b]}"),
                );
              },
              itemCount: scoreList.length,
            ),
          ),
          Spacer(),
          if (lastScore != -1)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Your last score is $lastScore'),
            )
        ],
      ),
    );
  }
}
