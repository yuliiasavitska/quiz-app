import 'package:flutter/material.dart';

class AnswerCardStatusIconWidget extends StatelessWidget {
  const AnswerCardStatusIconWidget({
    Key? key,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) => CircleAvatar(
        radius: 12,
        backgroundColor: color,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      );
}
