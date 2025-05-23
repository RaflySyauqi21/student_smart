import 'package:flutter/material.dart';
import 'package:student_smart/component/quiz_option.dart';

class BahasaInggrisPage extends StatelessWidget {
  const BahasaInggrisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(157, 206, 237, 1),
      appBar: AppBar(
        title: Image.asset('assets/logo.png', width: 400, height: 260),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(93, 169, 217, 1),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(93, 169, 217, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                'Bahasa Inggris',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color.fromRGBO(131, 199, 242, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                spacing: 30,
                children: [
                  Text(
                    'When does the day start?',
                    style: TextStyle(fontSize: 20),
                  ),
                  Column(
                    spacing: 30,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          QuizOption(
                            name: 'In the morning',
                            color: Colors.green,
                          ),
                          QuizOption(
                            name: 'In the afternoon',
                            color: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          QuizOption(name: 'In the Evening', color: Colors.red),
                          QuizOption(name: 'In the Night', color: Colors.red),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
