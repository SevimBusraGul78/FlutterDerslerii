import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  var tfController=TextEditingController();
  String alinanVeri="";
  // dskfs
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller:tfController,
              decoration: InputDecoration(
                hintText: "yaziniz",
              ),
            ),
            ElevatedButton(
              child: Text("Veriyi A ve yaz"),
              onPressed: (){
                setState(() {
                  alinanVeri=tfController.text;
                });
              },
            ),
            Text("Gelen veri: $alinanVeri"),
          ],

        ),
      ),

    );
  }
}
