import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unitiled11/sayfage%C3%A7i%C5%9Fleri/sayfaA.dart';

import '../sayfageçişleri/Kişiler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Sayfa A ya git"),
              onPressed: (){
                var kisi=Kisiler(isim:"ahmet",yas:18,boy:1.78,bekarMi:true,);
               Navigator.push(context,MaterialPageRoute(builder:(context) => SayfaA(kisi)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
