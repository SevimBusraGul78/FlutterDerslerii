import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unitiled11/sayfage%C3%A7i%C5%9Fleri/SayfaB.dart';

import 'Kişiler.dart';

class SayfaA extends StatefulWidget {
  Kisiler kisi;

  SayfaA(this.kisi);

  @override
  _SayfaAState createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SayfaA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Sayfa B"),
              onPressed: () {
                print("Sayfa B'ye git");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SayfaB()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}