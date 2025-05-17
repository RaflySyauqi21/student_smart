import 'package:flutter/material.dart';

class QuizSelectionpage extends StatelessWidget {
  const QuizSelectionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(157, 206, 237, 1),
      child: const Center(child: Column(children: [Text("Tahukah Kamu")])),
    );
  }
}
