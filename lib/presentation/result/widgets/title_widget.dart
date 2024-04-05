import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Text(
        'Your score: ',
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: AppColors.darkViolet,
        ),
      );
}
