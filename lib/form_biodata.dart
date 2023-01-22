import 'package:flutter/material.dart';
import 'package:uher_nim/Detail_Biodata.dart';

class BiodataForm extends StatefulWidget {
  @override
  BiodataForm_State createState() => BiodataForm_State();
}

class BiodataForm_State extends State<BiodataForm> {
  final _NpmTextBoxController = TextEditingController();
  final _NamaTextBoxController = TextEditingController();
  final _KelasTextBoxController = TextEditingController();
  final AlamatTextBoxController = TextEditingController()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Biodata',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "Times New Romans"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxNpm(),
            _textboxNama(),
            _textboxKelas(),
            _textboxJurusan(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNpm(){
    return TextField(
      decoration: InputDecoration(labelText: 'Npm'),
      controller: _NpmTextBoxController
    );
  }

  _textboxNama(){
    return TextField(
      decoration: InputDecoration(labelText: 'Nama'),
      controller: _NamaTextBoxController
    );
  }

  _textboxKelas(){
    return TextField(
      decoration: InputDecoration(labelText: 'Kelas'),
      controller: _KelasTextBoxController
    );
  }

_textboxAlamat(){
    return TextField(
      decoration: InputDecoration(labelText: 'Jurusan'),
      controller: _JurusanTextBoxController
    );
  }

  _tombolSimpan(){
    return RaisedButton(
      child: Text('Simpan'),
      onPressed: (){
        int npm = int.parse(_NpmTextBoxController.text);
        String nama = _NamaTextBoxController.text;
        String kelas = _KelasTextBoxController.text;
        String jurusan = _JurusanTextBoxController.text;
        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FormDetail(
          npm: npm, nama: nama, kelas: kelas, jurusan: jurusan,))
        );
      },
    );
  }
}

