import 'package:flutter/material.dart';
import 'package:student_smart/component/mata_pelajaran.dart';

class CheckPointPage extends StatefulWidget {
  const CheckPointPage({super.key});

  @override
  State<CheckPointPage> createState() => _CheckPointPageState();
}

class _CheckPointPageState extends State<CheckPointPage> {
  List<bool> matapelajaran = [false, false, false, false, false];
  List<String> namaMataPelajaran = [
    'Bahasa Indonesia',
    'Matematika',
    'Bahasa Inggris',
    'Pendidikan Agama',
    'Seni Budaya',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
              child: Text("Checkpoint", style: TextStyle(fontSize: 25)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: namaMataPelajaran.length,
                itemBuilder: (BuildContext context, int index) {
                  return MataPelajaran(
                    nama: namaMataPelajaran[index],
                    value: matapelajaran[index],
                    ontap: (bool? value) {
                      setState(() {
                        matapelajaran[index] = !matapelajaran[index];
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
