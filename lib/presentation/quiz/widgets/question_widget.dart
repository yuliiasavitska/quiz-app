import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  final String question;

  @override
  Widget build(BuildContext context) => Text(
        question,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.darkViolet),
        textAlign: TextAlign.center,
      );
}
