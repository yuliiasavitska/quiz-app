import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({
    Key? key,
    required this.score,
  }) : super(key: key);

  static const _questionsAmount = '/25';

  final String score;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            score,
            style: const TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: AppColors.darkViolet,
            ),
          ),
          const Text(
            _questionsAmount,
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: AppColors.darkViolet,
            ),
          ),
        ],
      );
}
