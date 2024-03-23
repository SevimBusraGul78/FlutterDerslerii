import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardYapisi extends StatefulWidget {
  //Tasarım üzerinde kullanabileceğimiz kart etkisi yaratan widgettır.
  //Listeleme ve sayfa üzerinde sabit tasarımlarda kullanılabilir

  const CardYapisi({super.key});

  @override
  State<CardYapisi> createState() => _CardYapisiState();
}

class _CardYapisiState extends State<CardYapisi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Card Yapisi"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,

              child: Card(
                color:Colors.deepPurpleAccent ,
                elevation: 10.0, //gölge miktari
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
            child:Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Toplam puan",style: TextStyle(color:Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,color:Colors.amber),
                      Text("150",style:TextStyle(color:Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            )
              ),
            )
          ],
        ),
      ),

    );
  }
}
