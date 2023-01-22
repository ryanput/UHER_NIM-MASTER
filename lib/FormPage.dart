`import 'package:flutter/material.dart';
import 'package:uher_nim/Detail_Biodata.dart';
import 'package:uher_nim/form_biodata.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa Bani saleh',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: "Times New Romans"),
        ),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () async {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context)=>BiodataForm()));
            },
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Mahasiswa(
            npm: 12181001,
            nama: "Jhony",
            kelas: "s1/ti/07/k/p",
            jurusan : "Sistem Informasi"
          ),
          Mahasiswa(
            npm: 12181002,
            nama: "Andi",
            kelas: "s1/ti/07/k/p",
            jurusan : "Tekhnik Informatika"
          ),
          Mahasiswa(
            npm: 12181003,
            nama: "Santi",
            kelas: "s1/ti/07/k/p",
            jurusan : "Tekhnik Informatika"
          ),
        ],
      ),
    );
  }
}

class Mahasiswa extends StatelessWidget{
  final int npm;
  final String nama;
  final String kelas;
  final String jurusan;

  Mahasiswa({required this.npm, required this.nama, required this.kelas, required this.jurusan});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      child: Card(
       child: ListTile(
        title: Text(npm.toString()),
        subtitle: Text(nama),
        ),
      ),
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>
        FormDetail(
            npm: npm,
            nama: nama,
            kelas: kelas
            jurusan: jurusan, )));
      },
    );
  }
}
