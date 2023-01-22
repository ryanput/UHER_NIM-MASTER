import 'package:flutter/material.dart';

class FormDetail extends StatefulWidget {
  final int npm;
  final String nama;
  final String kelas;
  final String jurusan;

  FormDetail(
      {required this.npm,
      required this.nama,
      required this.kelas,
      required this.jurusan});

  @override
  _FormDetailState createState() => _FormDetailState();
}

class _FormDetailState extends State<FormDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form Detail',
          style: TextStyle(
              fontSize: 16,
              fontFamily: "Times New Romans",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Npm    : ' + widget.npm.toString()),
          Text('Nama    : ${widget.nama}'),
          Text('Kelas   : ${widget.kelas}'),
          Text('Jurusan   : ${widget.jurusan}'),
        ],
      ),
    );
  }
}
