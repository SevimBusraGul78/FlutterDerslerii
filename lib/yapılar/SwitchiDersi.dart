import 'package:flutter/material.dart';

class SwitchDersi extends StatefulWidget {
  @override
  _SwitchDersiState createState() => _SwitchDersiState();
}
class _SwitchDersiState extends State<SwitchDersi> {
  bool switchKontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(

              value: switchKontrol,
              activeTrackColor: Colors.lightGreenAccent, //değiştiğinde renk değişsin
              activeColor: Colors.grey,
              onChanged: (veri) {
                setState(() {
                  switchKontrol = veri;
                  print("Switch: $veri");
                });
              },
            ),
            ElevatedButton(onPressed: (){
              print("Switch Durum: $switchKontrol");
            }, child:Text("Göster"))
          ],
        ),
      ),
    );
  }
}



