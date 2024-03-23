import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});
//Satırlar tek tek yan yana veya alt alta oluşturduğumuuz liste türüdür.
//İstenilen türde satır oluşturabilir
  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Yapısı"),
        backgroundColor: Colors.amber,
      ),
       body: GridView.count(
         crossAxisCount:3 ,
         childAspectRatio: 2/1,
         children: [
           GestureDetector(
             onTap: (){
               print("güneş tıklandı");
             },
             child: Card(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.sunny),
                   Text("Güneş"),
                 ],
               ),
             ),
           ),
           Card(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.wb_cloudy),
                 Text("bulut"),
               ],
             ),
           ),
           Card(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.star),
                 Text("yıldız"),
               ],
             ),
           )
         ],
       ),

        );

  }
}

