import 'package:flutter/material.dart';
import 'package:student_smart/pages/check_point_page.dart';
import 'package:student_smart/pages/main_page.dart';
import 'package:student_smart/pages/quiz_selection_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> pagesNavigation = [
      NavigationDestination(icon: Icon(Icons.list), label: 'Checkpoint'),
      NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.quiz), label: 'Quiz'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', width: 400, height: 260),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(93, 169, 217, 1),
      ),
      body:
          <Widget>[
            CheckPointPage(),
            MainPage(),
            QuizSelectionpage(),
          ][currentIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromRGBO(93, 169, 217, 1),
        destinations: pagesNavigation,
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
