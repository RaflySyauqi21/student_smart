import 'package:flutter/material.dart';

class QuizOption extends StatelessWidget {
  final String name;

  const QuizOption({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(name, style: TextStyle(fontSize: 20)),
    );
  }
}
