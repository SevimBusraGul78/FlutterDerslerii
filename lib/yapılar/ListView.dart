import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  //SabitListView alt alta listemele yapılabilir
  // sabittir dinamik değildir
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Yapısı"),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_cloudy),
            title: Text("Güneş"),
            subtitle: Text("Güneş "),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("bulutlandın");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("yıldız"),
            subtitle: Text("yıldız"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("yıldızlandın");
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_2),
            title: Text("ay"),
            subtitle: Text("ay "),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("aylandın");
            },
          ),

        ],
      ),
    );
  }
}
