import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/common/app_colors.dart';
import 'package:quiz_app/presentation/quiz/bloc/quiz_bloc.dart';
import 'package:quiz_app/presentation/quiz/widgets/quiz_page_content.dart';
import 'package:quiz_app/presentation/quiz/widgets/title_widget.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => QuizBloc(),
        child: Scaffold(
          backgroundColor: AppColors.violet,
          appBar: AppBar(
            backgroundColor: AppColors.lightViolet,
            centerTitle: true,
            title: const TitleWidget(),
          ),
          body: const QuizPageContent(),
        ),
      );
}
