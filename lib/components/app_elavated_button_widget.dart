import 'package:flutter/material.dart';
import 'package:quiz_app/common/app_colors.dart';

class AppElevatedButtonWidget extends StatelessWidget {
  const AppElevatedButtonWidget({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightViolet,
          side: BorderSide(
            width: 2,
            color: AppColors.darkMediumViolet,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          padding: const EdgeInsets.only(
            left: 116,
            top: 20,
            right: 116,
            bottom: 20,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textLightGrey,
          ),
        ),
      );
}
