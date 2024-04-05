import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';

class QuizActionButtonWidget extends StatelessWidget {
  const QuizActionButtonWidget({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: onPressed != null ? AppColors.darkViolet : null,
          side: const BorderSide(
            width: 2,
            color: AppColors.darkMediumViolet,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.only(left: 116, top: 20, right: 116, bottom: 20),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textLightGrey,
          ),
        ),
      );
}
