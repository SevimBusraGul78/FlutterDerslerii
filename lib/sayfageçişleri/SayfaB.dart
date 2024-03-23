import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unitiled11/yap%C4%B1lar/AnaSayfa.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Geri tusu tıklandı");
   // return false; //geri dönmesini istemiyorum
    Navigator.of(context).popUntil((route) => route.isFirst);
     return true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SayfaB"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            print("appbar geri tuşu tıklandı");//consolda yazı bastırır
            Navigator.push(context,MaterialPageRoute(builder:(context) => AnaSayfa()));
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
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
      ),
    );
  }
}
