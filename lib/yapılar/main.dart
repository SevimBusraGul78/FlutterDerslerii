
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:unitiled11/yap%C4%B1lar/dinamiklistView.dart';
import 'AppBar.dart';
import 'CardYapisi.dart';
import 'GridView.dart';
import 'ListView.dart';
import 'form yapısı.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:DinamikListView(),
    );
  }
}

