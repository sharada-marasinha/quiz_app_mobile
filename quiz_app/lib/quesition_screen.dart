import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/quesitions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onAction});

  final Function(String value) onAction;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> { 
  int curruntQuationIndex = 0;
  void changeQ() {
    setState(() {
      curruntQuationIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            questions[curruntQuationIndex].question,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 28),
          ),
          ...questions[curruntQuationIndex]
              .answers
              .map((answer) => AnswerButton(value: answer, onAnswer: changeQ)),
          const SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                widget.onAction('start');
              },
              child: const Text(
                'Back to Start',
                style: TextStyle(fontSize: 18, color: Colors.amber),
              ))
        ],
      ),
    );
  }
}
