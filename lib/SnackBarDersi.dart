import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarDersi extends StatefulWidget {
  const SnackBarDersi({Key? key, required this.content}) : super(key: key);
  final Text content;

  @override
  State<SnackBarDersi> createState() => _SnackBarDersiState();
}

class _SnackBarDersiState extends State<SnackBarDersi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed:(){

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("merhaba")),
                );
              },
                child: Text("Varsayılar"),
              ),
              ElevatedButton(onPressed:(){

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Silmek İstiyor musunuz ?"),
                    action: SnackBarAction(
                      label: "Evet",
                      onPressed:(){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text("Silindi")),
                        );
                      },
                    ),
                  ),
                );

              }, child: Text("SnackBar Action")
              ),
              ElevatedButton(onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("İnternet Bağlantısı Yok",style: TextStyle(color: Colors.white10),),
                    backgroundColor: Colors.white10,
                    duration: Duration(seconds: 5), //beklediğimiz süre kadar

                    action: SnackBarAction(
                      label: "Tekrar Dene",
                      textColor: Colors.red,
                      onPressed:(){
                        print("Tekrar Denendi");

                      },
                    ),
                  ),
                );

              }, child: Text("SnackBar Özel"))
              ,
            ],
          ),
        )
    );


  }
}
