import 'package:flutter/material.dart';

class MataPelajaran extends StatelessWidget {
  final String nama;
  final bool value;
  final void Function(bool?) ontap;
  const MataPelajaran({
    super.key,
    required this.nama,
    required this.value,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   title: Text(nama),
    //   tileColor: Color.fromRGBO(93, 169, 217, 1),
    //   trailing: Checkbox(value: value, onChanged: ontap),
    // );
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromRGBO(93, 169, 217, 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(nama, style: TextStyle(fontSize: 18)),
            Checkbox(value: value, onChanged: ontap),
          ],
        ),
      ),
    );
  }
}
