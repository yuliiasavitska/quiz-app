import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/presentation/quiz/bloc/quiz_bloc.dart';
import 'package:quiz_app/presentation/quiz/bloc/quiz_state.dart';
import 'package:quiz_app/presentation/quiz/widgets/answer_options_widget.dart';
import 'package:quiz_app/presentation/quiz/widgets/question_widget.dart';
import 'package:quiz_app/presentation/quiz/widgets/quiz_action_button_widget.dart';
import 'package:quiz_app/presentation/result/result_page.dart';

class QuizPageContent extends StatelessWidget {
  const QuizPageContent({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<QuizBloc, QuizState>(builder: (context, state) {
        if (state is QuizStateSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuestionWidget(question: state.question.question),
                  const SizedBox(height: 20),
                  AnswerOptionsWidget(
                    correctAnswerIndex: state.question.correctAnswerIndex,
                    selectedAnswerIndex: state.selectedAnswerIndex,
                    options: state.question.options,
                    onAnswerPicked: (index) =>
                        context.read<QuizBloc>().onAnswerSelected(index),
                  ),
                  const SizedBox(height: 36),
                  QuizActionButtonWidget(
                    onPressed: () => state.isLastQuestion()
                        ? Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => ResultPage(
                                score: state.score,
                              ),
                            ),
                          )
                        : state.selectedAnswerIndex != null
                            ? context.read<QuizBloc>().onNextClicked()
                            : null,
                    label: state.isLastQuestion() ? 'Finish' : 'Next',
                  )
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: Text("Opps, something went wrong"),
          );
        }
      });
}
