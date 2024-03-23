import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Toolbar üzerinde armaa işlemi yapmak  içib textfield kullanılabilir
// İki tasarım oluşturulur arama yapıldığı durumda için ve arama yapılmadığı durum için
// Arama yapıldığını state özelliği olan bir değişken ile takip edebiliriz

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AppBarDersi(),
  ));
}

class AppBarDersi extends StatefulWidget {
  AppBarDersi({Key? key}) : super(key: key);

  @override
  _AppBarDersiState createState() => _AppBarDersiState();
}

class _AppBarDersiState extends State<AppBarDersi> {
  bool aramaYapiliyormu = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyormu
            ? TextField(
          decoration: InputDecoration(hintText: "Arama için bir şey yazın"),
          onChanged: (aramaSonucu) {
            print("Arama Sonucu: $aramaSonucu");
          },
        )
            : Text("Appbar Arama"),
        actions: [
          aramaYapiliyormu
              ? IconButton(
               onPressed: () {
              setState(() {
                aramaYapiliyormu = false;
              });
            },
            icon: Icon(Icons.cancel),
          )
              : IconButton(
            onPressed: () {

              setState(() {
                aramaYapiliyormu = true;
              });
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
