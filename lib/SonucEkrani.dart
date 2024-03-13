import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  bool sonuc;
  SonucEkrani({required this.sonuc});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuc Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.sonuc ? Image.asset("resimler/mutlu_resim.png"):Image.asset("resimler/uzgun_resim.png"),
            Text(
              widget.sonuc ? "Kazandınız ": "Kaybettiniz",
              style: TextStyle(color: Colors.black54, fontSize: 36),
            ),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //geri tuşunun yaptığı işi yapar
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text(
                  "Tekrar Dene",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
