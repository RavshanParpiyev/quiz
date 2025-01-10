import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int res;
  final int? questionsLength;
  final Function() restart;

  const Result(
      {super.key,
      required this.res,
      this.questionsLength,
      required this.restart});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Savollar qolmadi",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          Text(
            "Natija = $res / $questionsLength",
            style: const TextStyle(fontSize: 30),
          ),
          ElevatedButton(onPressed: restart, child: const Text("Press me")),
        ],
      ),
    );
  }
}
