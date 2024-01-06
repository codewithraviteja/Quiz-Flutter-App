import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';

class QuizPage extends StatefulWidget {
  // const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.'
  // ];
  // List<bool> answers = [false, true, true];
  List<Icon> scoreKeeper = [];
  int questionNumbers = 0;
  // List<Question> questionBank = [
  //   Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
  //   Question(
  //       q: 'Approximately one quarter of human bones are in the feet.',
  //       a: true),
  //   Question(q: 'A slug\'s blood is green.', a: true),
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          questionBank[questionNumbers].questionText,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.00,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextButton(
                        onPressed: () {
                          bool correctAnswer =
                              questionBank[questionNumbers].questionAnswer;
                          if (correctAnswer == true) {
                            print('You got it right');
                          } else {
                            print('You got it wrong');
                          }
                          setState(() {
                            if (questionNumbers < 2) {
                              questionNumbers++;
                            }
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        ),
                        child: Text(
                          'True',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextButton(
                        onPressed: () {
                          bool correctAnswer =
                              questionBank[questionNumbers].questionAnswer;
                          if (correctAnswer == false) {
                            print('You got it right');
                          } else {
                            print('You got it wrong');
                          }
                          setState(() {
                            if (questionNumbers <= 2) {
                              questionNumbers++;
                            }
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        child: Text(
                          'False',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
