import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(157, 206, 237, 1),
      child: const Center(child: Column(children: [Text("Tahukah Kamu")])),
    );
  }
}
