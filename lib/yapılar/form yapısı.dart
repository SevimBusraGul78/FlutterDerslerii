import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FormYapisi(),
  ));
}

class FormYapisi extends StatelessWidget {
  FormYapisi({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Değerli",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              "Sevim Büşra",
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          tooltip: "Menu İcon",
          icon: Icon(Icons.dehaze),
          onPressed: () {
            print("menü ikon tıklandı");
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "çıkış",
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {
              print("bilgi tıklandı");
            },
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Sil"),
              ),
              PopupMenuItem(
                value: 2,
                child: PopupMenuButton(
                  child: Text("Güncelle"),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 3,
                      child: Text("Seçenek 1"),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text("Seçenek 2"),
                    ),
                  ],
                  onSelected: (menuItemValue) {
                    if (menuItemValue == 3) {
                      print("Güncelle - Seçenek 1 tıklandı");
                    } else if (menuItemValue == 4) {
                      print("Güncelle - Seçenek 2 tıklandı");
                    }
                  },
                ),
              ),
            ],
            onSelected: (menuItemValue) {
              if (menuItemValue == 1) {
                print("Sil tıklandı");
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                child: Image.asset(
                  "lib/resim/OIG4.jpeg", // Doğru resim yolunu verin
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: tfKullaniciAdi,
                      decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                      validator: (tfgirdisi) {
                        if (tfgirdisi!.isEmpty) {
                          return "Kullanıcı Adını Giriniz";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: tfSifre,
                      obscureText: true, // şifre girdiğimizde karakteri saklasın
                      decoration: InputDecoration(hintText: "Şifre"),
                      validator: (tfgirdisi) {
                        if (tfgirdisi!.isEmpty) {
                          return "Şifre Giriniz";
                        }
                        if (tfgirdisi.length < 6) {
                          return "Şifreniz en az 6 haneli olmalıdır";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 80,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                          onPressed: () {
                            print("girildi");
                            bool kontrolSonucu =
                            formKey.currentState!.validate();
                            if (kontrolSonucu) {
                              String ka = tfKullaniciAdi.text;
                              String kb = tfSifre.text;
                              print("Kullanıcı Adı: $ka - Şifre: $kb");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.red,
                          ),
                          child: Text("Başla"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
