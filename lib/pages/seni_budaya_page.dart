import 'package:flutter/material.dart';
import 'package:student_smart/component/quiz_option.dart';

class SeniBudayaPage extends StatelessWidget {
  const SeniBudayaPage({super.key});

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
                'Seni Budaya',
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 30,
                children: [
                  Text(
                    'Saat kita salah membuat garis di kertas dengan menggunakan pensil maka yang kita lakukan adalah',
                    style: TextStyle(fontSize: 20),
                  ),
                  QuizOption(name: 'Membuang Kertasnya', color: Colors.red),
                  QuizOption(
                    name: 'Menghapus gambar dengan penghapus',
                    color: Colors.green,
                  ),
                  QuizOption(
                    name: 'Mencoret-coret gambar yang salah',
                    color: Colors.red,
                  ),
                  QuizOption(name: 'Mewarnai kertasnya', color: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
