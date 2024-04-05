import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';

class AnswerCardWithoutStatusWidget extends StatelessWidget {
  const AnswerCardWithoutStatusWidget({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) => Container(
        height: 60,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.lightViolet,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            width: 2,
            color: AppColors.darkMediumViolet,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                question,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.textLightGrey,
                ),
              ),
            ),
          ],
        ),
      );
}
