import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/quiz/widgets/answer_card_with_status_widget.dart';
import 'package:quiz_app/presentation/quiz/widgets/answer_card_without_status_widget.dart';

class AnswerCardWidget extends StatelessWidget {
  const AnswerCardWidget({
    super.key,
    required this.question,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String question;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final isCardSelected = currentIndex == selectedAnswerIndex;
    final isCardWithCorrectAnswer = currentIndex == correctAnswerIndex;

    final isSelectedItemAndCorrect = (isCardSelected && isCardWithCorrectAnswer);
    final isSelectedItemAndWrong = (isCardSelected && !isCardWithCorrectAnswer);
    final isHintItemAfterWrongAnswer = selectedAnswerIndex != null &&
        selectedAnswerIndex != currentIndex &&
        isCardWithCorrectAnswer;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: isSelectedItemAndCorrect ||
              isSelectedItemAndWrong ||
              isHintItemAfterWrongAnswer
          ? AnswerCardWithStatusWidget(
              question: question,
              answerStatus: isCardWithCorrectAnswer
                  ? AnswerStatus.correct
                  : AnswerStatus.wrong,
            )
          : AnswerCardWithoutStatusWidget(question: question),
    );
  }
}
