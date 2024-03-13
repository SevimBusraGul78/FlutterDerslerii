import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unitiled/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({super.key});

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {

var tfTahmin=TextEditingController();
int rastgeleSayi=0;
int kalanHak=5;
String yonlendirme="";

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    rastgeleSayi=Random().nextInt(11); //0-10
    print("Rastgele Sayi : $rastgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text(
               "Kalan Hak:$kalanHak",
               style: TextStyle(color: Colors.pink, fontSize: 30),
             ),
             Text(
               "Yardım:$yonlendirme",
               style: TextStyle(color: Colors.black54, fontSize: 36),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                 controller:tfTahmin ,
                 keyboardType: TextInputType.number, //klavyenin sayısal değeri olmasını sağlar
                 textAlign: TextAlign.center,
                 decoration: InputDecoration(
                   labelText: "Tahmin", //labelText ekler
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                   )
                 ),
               ),
             ),
             SizedBox(
               width: 200,
               height: 50,
               child: ElevatedButton(
                 onPressed: () {
                   setState(() {
                     kalanHak=kalanHak-1;
                   });
                   int tahmin=int.parse(tfTahmin.text);
                   if(tahmin==rastgeleSayi){
                     Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: true,))//geri tuşuna basttığımız zaman anasayfaya dönereturn; //butonun çalışmasını durdurur

                     );
                   }
                   if(tahmin>rastgeleSayi){
                     setState(() {
                       yonlendirme="Tahmini Azalt";
                     });

                   } if(tahmin<rastgeleSayi){
                     setState(() {
                       yonlendirme="Tahmini Arttr";
                     });
                   }
                     if(kalanHak ==0 ){
                       setState(() {
                         Navigator.pushReplacement(
                             context,
                             MaterialPageRoute(builder: (context) => SonucEkrani(sonuc:false)));//geri tuşuna basttığımız zaman anasayfaya dönereturn; //butonun çalışmasını durdurur
                             return ;

                       });
                     }
                     tfTahmin.text="";
                 },
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                 ),
                 child: Text(
                   "Tahmin Et",
                   style: TextStyle(color: Colors.pink),
                 ),
               ),
             ),
           ],

        ),
      ),
    );
  }
}
