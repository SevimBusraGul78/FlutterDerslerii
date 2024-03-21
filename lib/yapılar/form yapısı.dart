import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormYapisi extends StatelessWidget {
   FormYapisi({super.key});
  var formKey=GlobalKey<FormState>();
  var tfKullaniciAdi=TextEditingController();
  var tfSifre=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Yapısı 2. Kez yazıyorsun dikkatli ol "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(key: formKey,
               child:Column(
                 children: [
                   TextFormField(
                     controller:tfKullaniciAdi,
                     decoration: InputDecoration(hintText: "Kullanici Adi"),
                     validator:(tfgirdisi){
                       if(tfgirdisi!.isEmpty){
                         return "Kullanici Adlini Giriniz";
                       }
                       return null ;
                     },
                   ),
                   TextFormField(
                     controller:tfSifre,
                     obscureText: true, //şife girdiğimizde karakteri saklasın
                     decoration: InputDecoration(hintText: "sifre"),
                     validator:(tfgirdisi){
                       if(tfgirdisi!.isEmpty){
                         return "Sifre Giriniz";
                       }
                       if(tfgirdisi!.length<6){
                         return "Sifreniz en aaz 6 haneli olmalıdır ";
                       }
                       return null ;
                     },
                   ),
                   SizedBox(
                     height: 80,
                     width: 200,

                     child: Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: ElevatedButton(onPressed: (){
                         print("girildi");
                         bool kontrolSonucu=formKey.currentState!.validate();
                         if(kontrolSonucu){
                           String ka=tfKullaniciAdi.text;
                           String kb=tfSifre.text;
                           print("kullanici adi :$ka- kullanıcı şifre :$kb");
                         }
                         },
                         style: ElevatedButton.styleFrom(
                             foregroundColor: Colors.white, backgroundColor: Colors.red,), // İçerik (text) rengi
                             // Butonun diğer özelliklerini de buraya ekleyebilirsiniz
                        child: Text("Başla")),
                     ),
                   )
                 ],
               )
              ),
            )
          ],
        ),
      ),
    );
  }
}
