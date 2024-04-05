import 'package:quiz_app/models/question.dart';

abstract class QuizState {}

class QuizStateSuccess extends QuizState {
  QuizStateSuccess({
    required this.questions,
    required this.question,
    required this.questionIndex,
    this.selectedAnswerIndex,
    required this.score,
  });

  final List<Question> questions;
  final Question question;
  final int questionIndex;
  final int? selectedAnswerIndex;
  final int score;

  QuizStateSuccess copyWith({
    final List<Question>? questions,
    final Question? question,
    final int? questionIndex,
    final int? selectedAnswerIndex,
    final int? score,
  }) =>
      QuizStateSuccess(
        questions: questions ?? this.questions,
        question: question ?? this.question,
        questionIndex: questionIndex ?? this.questionIndex,
        score: score ?? this.score,
        selectedAnswerIndex: selectedAnswerIndex,
      );

  bool isLastQuestion() => questionIndex == questions.length - 1;
}

class QuizStateError extends QuizState {}
