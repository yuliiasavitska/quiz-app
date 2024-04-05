import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';
import 'package:quiz_app/presentation/result/widgets/score_widget.dart';
import 'package:quiz_app/presentation/result/widgets/title_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.score,
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violet,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TitleWidget(),
          const SizedBox(height: 16),
          ScoreWidget(score: score.toString()),
        ],
      ),
    );
  }
}
