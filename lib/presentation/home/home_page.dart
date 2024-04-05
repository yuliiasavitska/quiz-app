import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';
import 'package:quiz_app/components/app_elavated_button_widget.dart';
import 'package:quiz_app/presentation/home/widgets/title_widget.dart';
import 'package:quiz_app/presentation/quiz/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.violet,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TitleWidget(),
                const SizedBox(height: 40),
                AppElevatedButtonWidget(
                  title: 'Play',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuizPage()),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
