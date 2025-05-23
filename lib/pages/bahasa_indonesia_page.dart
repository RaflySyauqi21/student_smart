import 'package:flutter/material.dart';
import 'package:student_smart/component/quiz_option.dart';

class BahasaIndonesiaPage extends StatelessWidget {
  const BahasaIndonesiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(157, 206, 237, 1),
      appBar: AppBar(
        title: Image.asset('assets/logo.png', width: 400, height: 260),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(93, 169, 217, 1),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(93, 169, 217, 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text("Bahasa Indonesia", style: TextStyle(fontSize: 25)),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(93, 169, 217, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        spacing: 20,
                        children: [
                          Text(
                            "Lengkapi kalimat di bawah ini!",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Aku ingin pergi ke ..... dengan keluargaku.",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 150,
                            children: [
                              QuizOption(name: 'Menari', color: Colors.red),
                              QuizOption(name: 'Toko Buku', color: Colors.green),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 150,
                            children: [
                              QuizOption(name: 'Berjalan', color: Colors.red),
                              QuizOption(name: 'Pagi', color: Colors.red),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
