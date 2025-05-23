import 'package:flutter/material.dart';

class QuizOption extends StatefulWidget {
  final Color color;
  final String name;

  const QuizOption({super.key, required this.name, required this.color});

  @override
  State<QuizOption> createState() => _QuizOptionState();
}

class _QuizOptionState extends State<QuizOption> {
  bool isTrue = false;

  void onClick() {
    setState(() {
      isTrue = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: isTrue ? widget.color : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(widget.name, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
