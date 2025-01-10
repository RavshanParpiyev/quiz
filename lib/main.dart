import 'package:flutter/material.dart';
import 'package:quiz/widgets/questions.dart';
import 'package:quiz/widgets/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final dynamic buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green.shade300,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));

  final dynamic textStyle = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);

  List<Map<String, dynamic>> answerQuestion = [
    {
      "question": "1. What is the capital of France?",
      "answers": [
        {"text": "Madrid", "choice": false},
        {"text": "Paris", "choice": true},
        {"text": "Berlin", "choice": false},
        {"text": "Rome", "choice": false},
      ]
    },
    {
      "question": "2. In what continent is Brazil located?",
      "answers": [
        {"text": "Europe", "choice": false},
        {"text": "Asia", "choice": false},
        {"text": "North America", "choice": true},
        {"text": "South America", "choice": false},
      ]
    },
    {
      "question": "3. What is the largest planet in our solar system?",
      "answers": [
        {"text": "Earth", "choice": false},
        {"text": "Jupiter", "choice": true},
        {"text": "Saturn", "choice": false},
        {"text": "Venus", "choice": false},
      ]
    },
    {
      "question": "4. What is the longest river in the world?",
      "answers": [
        {"text": "Nile", "choice": true},
        {"text": "Amazon", "choice": false},
        {"text": "Mississippi", "choice": false},
        {"text": "Danube", "choice": false},
      ]
    },
    {
      "question": "5. Who is the main character in the Harry Potter series?",
      "answers": [
        {"text": "Hermione Granger", "choice": true},
        {"text": "Ron Weasley", "choice": false},
        {"text": "Harry Potter", "choice": false},
        {"text": "Neville Longbottom", "choice": false},
      ]
    }
  ];

  int queueQuestions = 0;
  int res = 0;

  void questionAnswer(bool answer) {
    setState(() {
      queueQuestions++;
      if (answer) {
        res++;
      }
    });
  }

  void restart() {
    setState(() {
      queueQuestions = 0;
      res = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Quiz"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: queueQuestions < answerQuestion.length
              ? Questions(
                  answers: answerQuestion[queueQuestions]["answers"],
                  questionAnswer: questionAnswer,
                  questions: answerQuestion[queueQuestions]["question"],
                  buttonStyle: buttonStyle,
                  textStyle: textStyle,
                )
              : Result(
                  res: res,
                  restart: restart,
                  questionsLength: answerQuestion.length,
                ),
        ),
      ),
    );
  }
}
