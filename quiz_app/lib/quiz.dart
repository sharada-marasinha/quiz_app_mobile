import 'package:flutter/material.dart';
import 'package:quiz_app/quesition_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(
  //     onAction: onScreenChange,
  //   );
  //   super.initState();
  // }

  void onScreenChange(String value) {
    setState(() {
      activeScreen = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? currentScreen = StartScreen(onAction: onScreenChange);

    if (activeScreen == 'start') {
      currentScreen = StartScreen(onAction: onScreenChange);
    }

    if (activeScreen == 'quiz') {
      currentScreen = QuestionScreen(onAction: onScreenChange);
    }
        if (activeScreen == 'quiz') {
      currentScreen = QuestionScreen(onAction: onScreenChange);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
             Color.fromARGB(255, 255, 115, 115),
             Color.fromARGB(255, 119, 119, 119)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: currentScreen,
      )),
    );
  }
}
