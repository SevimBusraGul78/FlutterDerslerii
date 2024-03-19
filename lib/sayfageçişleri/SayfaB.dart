import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unitiled11/sayfage%C3%A7i%C5%9Fleri/AnaSayfa.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SayfaB"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Geldiği Sayfaya Dön"),
              onPressed: (){
              Navigator.pop(context); //geldiği sayfaya geri dönüş sağlar
              },
            ),
            ElevatedButton(
              child: Text("AnaSayfayaGeçişYap"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context) => AnaSayfa()));

              },
            ),
            ElevatedButton(
              child: Text("AnaSayfayadön"), //geri dönüş için sayfa bırakmaz
              onPressed: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),

          ],
        ),
      ),
    );
  }
}
