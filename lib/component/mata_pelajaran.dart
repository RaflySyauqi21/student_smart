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
    return ListTile(
      title: Text(nama),
      tileColor: Color.fromRGBO(93, 169, 217, 1),
      trailing: Checkbox(value: value, onChanged: ontap),
    );
  }
}
