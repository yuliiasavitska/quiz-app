import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/presentation/quiz/bloc/quiz_state.dart';

class QuizBloc extends Cubit<QuizState> {
  QuizBloc()
      : super(
          QuizStateSuccess(
            questions: questions,
            question: questions.first,
            questionIndex: 0,
            score: 0,
          ),
        );

  void onAnswerSelected(final int index) {
    final currentState = state;
    if (currentState is! QuizStateSuccess) {
      emit(QuizStateError());
      return;
    }

    final score = index == currentState.question.correctAnswerIndex
        ? currentState.score + 1
        : currentState.score;
    emit(
      currentState.copyWith(
        score: score,
        selectedAnswerIndex: index,
      ),
    );
  }

  void onNextClicked() {
    final currentState = state;
    if (currentState is! QuizStateSuccess) {
      emit(QuizStateError());
      return;
    }

    if (currentState.questionIndex < currentState.questions.length - 1) {
      final questionIndex = currentState.questionIndex + 1;
      emit(
        currentState.copyWith(
          questionIndex: currentState.questionIndex + 1,
          question: currentState.questions[questionIndex],
          selectedAnswerIndex: null,
        ),
      );
    }
  }
}
