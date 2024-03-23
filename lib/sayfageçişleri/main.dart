
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../yapılar/AppBar.dart';
import '../yapılar/CardYapisi.dart';
import '../yapılar/ListView.dart';
import '../yapılar/form yapısı.dart';

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
      home: MyListView(),
    );
  }
}

