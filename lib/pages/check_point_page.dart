import 'package:flutter/material.dart';
import 'package:student_smart/component/mata_pelajaran.dart';

class CheckPointPage extends StatefulWidget {
  const CheckPointPage({super.key});

  @override
  State<CheckPointPage> createState() => _CheckPointPageState();
}

class _CheckPointPageState extends State<CheckPointPage> {
  List<bool> matapelajaran = [false, false, false, false, false];
  void onchange(bool? value){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(157, 206, 237, 1),
      child: Center(
        child: Column(
          children: [
            Text("Checkpoint"),
            Expanded(
              child: ListView(
                children: [
                  MataPelajaran(nama: "Bahasa Indonesia", value: matapelajaran[0],ontap: ,),
                  MataPelajaran(nama: "Matematika"),
                  MataPelajaran(nama: "Bahasa Inggris"),
                  MataPelajaran(nama: "Pendidikan Agama"),
                  MataPelajaran(nama: "Seni Budaya"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
