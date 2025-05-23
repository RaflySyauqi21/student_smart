import 'package:flutter/material.dart';
import 'package:student_smart/pages/bahasa_indonesia_page.dart';
import 'package:student_smart/pages/bahasa_inggris_page.dart';
import 'package:student_smart/pages/matematika_page.dart';
import 'package:student_smart/pages/pendidikan_agama_page.dart';

class QuizSelectionpage extends StatefulWidget {
  const QuizSelectionpage({super.key});

  @override
  State<QuizSelectionpage> createState() => _QuizSelectionpageState();
}

class _QuizSelectionpageState extends State<QuizSelectionpage> {
  List<bool> matapelajaran = [false, false, false, false, false];
  List<String> namaMataPelajaran = [
    'Bahasa Indonesia',
    'Matematika',
    'Bahasa Inggris',
    'Pendidikan Agama',
    'Seni Budaya',
  ];
  List<Widget> halamanMataPelajaran = [
    BahasaIndonesiaPage(),
    MatematikaPage(),
    BahasaInggrisPage(),
    PendidikanAgamaPage(),
    MatematikaPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      color: Color.fromRGBO(157, 206, 237, 1),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(93, 169, 217, 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text("Quiz", style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView.builder(
                  itemCount: namaMataPelajaran.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return halamanMataPelajaran[index];
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromRGBO(93, 169, 217, 1),
                        ),
                        child: Text(
                          namaMataPelajaran[index],
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
