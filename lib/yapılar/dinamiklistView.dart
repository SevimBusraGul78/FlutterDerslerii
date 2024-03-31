import 'package:flutter/material.dart';
import '../sayfageçişleri/Kişiler.dart';
import '../sayfageçişleri/sayfaA.dart';

class DinamikListView extends StatefulWidget {
  @override
  _DinamikListViewState createState() => _DinamikListViewState();
}

class _DinamikListViewState extends State<DinamikListView> {
  var ulkeler = ["Türkiye", "Almanya", "Çin", "Rusya", "İtalya","ingiltere","arabistan","kuveyt","londro"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, index) {

          return Card(
            child: SizedBox(
              height: 80,
              width: 80,
              child: ListTile(
                title: Text(ulkeler[index]),
                onTap: () {
                    print("Seçilen ülke: ${ulkeler[index]}");
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

