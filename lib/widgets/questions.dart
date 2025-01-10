// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final List<Map<String, dynamic>> answers;
  final Function questionAnswer;
  final String questions;

  final dynamic buttonStyle;
  final dynamic textStyle;
  const Questions({
    super.key,
    required this.answers,
    required this.questions,
    required this.questionAnswer,
    this.buttonStyle,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questions,
          style: const TextStyle(fontSize: 30),
        ),
        ElevatedButton(
          onPressed: () {
            questionAnswer(answers[0]["choice"]);
          },
          style: buttonStyle,
          child: Text(
            answers[0]["text"],
            style: textStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            questionAnswer(answers[1]["choice"]);
          },
          style: buttonStyle,
          child: Text(
            answers[1]["text"],
            style: textStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            questionAnswer(answers[2]["choice"]);
          },
          style: buttonStyle,
          child: Text(
            answers[2]["text"],
            style: textStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            questionAnswer(answers[3]["choice"]);
          },
          style: buttonStyle,
          child: Text(
            answers[3]["text"],
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
