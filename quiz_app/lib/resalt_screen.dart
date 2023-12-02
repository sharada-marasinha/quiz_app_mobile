import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-cover.png',
            width: 300,
          ),
          const Text(
            'Resalt Screen',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          OutlinedButton(
              onPressed: () {
              },
              child: const Text('ReStart'))
        ],
      ),
    );
  }
}