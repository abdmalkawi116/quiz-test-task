import 'package:flutter/material.dart';
import 'answer_widget.dart';

void main() {
  runApp(MaterialApp(home: Quiztest()));
}

class Quiztest extends StatelessWidget {
  const Quiztest({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> answers = [
      {
        "item" : "Pasta",
        "onPress" : () => debugPrint('pasta')
      },
      {
        "item" : "Rice",
        "onPress" : () => debugPrint('rice')
      },
      {
        "item" : "Mansaf",
        "onPress" : () => debugPrint('mansaf')
      },

    ];
    return Scaffold(
      backgroundColor: Colors.grey[255],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text('What is your fav food?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),  // TextStyle, Text
                Column(
                  children: answers.map((a) {
                    return AnswerWidget(answerMap: a); }).toList()
                  )  // Column

                ],
            ),  // Column
          ),  // Padding
        ),  // SizedBox
      ),  // SafeArea
    );  // Scaffold
  }
}
