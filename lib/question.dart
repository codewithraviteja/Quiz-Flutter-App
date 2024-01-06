import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question {
  late String questionText;
  late bool questionAnswer;
  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
}

List<Question> questionBank = [
  Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
  Question(
      q: 'Approximately one quarter of human bones are in the feet.', a: true),
  Question(q: 'A slug\'s blood is green.', a: true),
];
