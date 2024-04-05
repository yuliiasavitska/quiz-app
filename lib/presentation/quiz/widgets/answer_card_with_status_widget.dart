import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';
import 'package:quiz_app/presentation/quiz/widgets/answer_card_status_icon_widget.dart';

enum AnswerStatus {
  correct,
  wrong;

  bool isCorrect() => this == AnswerStatus.correct;
}

class AnswerCardWithStatusWidget extends StatelessWidget {
  const AnswerCardWithStatusWidget({
    super.key,
    required this.question,
    required this.answerStatus,
  });

  final String question;
  final AnswerStatus answerStatus;

  @override
  Widget build(BuildContext context) => Container(
        height: 60,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.lightViolet,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            width: 2,
            color: answerStatus.isCorrect() ? Colors.green : Colors.red,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                question,
                style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.textLightGrey,
                ),
              ),
            ),
            AnswerCardStatusIconWidget(
              iconData: answerStatus.isCorrect() ? Icons.check : Icons.close,
              color: answerStatus.isCorrect() ? Colors.green : Colors.red,
            ),
          ],
        ),
      );
}
