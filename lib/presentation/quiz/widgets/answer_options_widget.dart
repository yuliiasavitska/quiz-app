import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/quiz/widgets/answer_card_widget.dart';

class AnswerOptionsWidget extends StatelessWidget {
  const AnswerOptionsWidget({
    Key? key,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
    required this.options,
    this.onAnswerPicked,
  }) : super(key: key);

  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final List<dynamic> options;
  final Function(int)? onAnswerPicked;

  @override
  Widget build(BuildContext context) => ListView.builder(
        shrinkWrap: true,
        itemCount: options.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: selectedAnswerIndex == null ? () => onAnswerPicked?.call(index) : null,
          child: AnswerCardWidget(
            currentIndex: index,
            question: options[index],
            selectedAnswerIndex: selectedAnswerIndex,
            correctAnswerIndex: correctAnswerIndex,
          ),
        ),
      );
}
