import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      color: Color.fromRGBO(157, 206, 237, 1),
      child: Center(
        child: Column(
          spacing: 50,
          children: [
            Text("Tahukah Kamu?", style: TextStyle(fontSize: 50)),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(93, 169, 217, 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                spacing: 30,
                children: [
                  Text(
                    "Otak Kita Bekerja Lebih Baik",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "Saat Kita Belajar Dengan",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "Suasana Hati Yang Senang",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Text(
              '“Ing Ngarsa Sung Tulada Ing Madya Mangun Karsa Tut Wuri Handayani”',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text("Ki Hajar Dewantara", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
