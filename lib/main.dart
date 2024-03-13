<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:unitiled/TahminEkrani.dart';
=======
//import 'package:derslerim/SwitchiDersi.dart';
import 'package:flutter/material.dart';

import 'SnackBarDersi.dart';
>>>>>>> 21612222abb2386b57a622aec3c73635f0a5880e

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
<<<<<<< HEAD
  const MyApp({Key? key}) : super(key: key);
=======
  const MyApp({super.key});
>>>>>>> 21612222abb2386b57a622aec3c73635f0a5880e

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
        useMaterial3: true,
      ),
      home: AnaSayfa(), // Burada AnaSayfa widget'ini kullanıyoruz
=======
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,
      ),
      home: SnackBarDersi(
        content: Text("Merhaba!"),

      ),
>>>>>>> 21612222abb2386b57a622aec3c73635f0a5880e
    );
  }
}

<<<<<<< HEAD
class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
=======
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

>>>>>>> 21612222abb2386b57a622aec3c73635f0a5880e
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text("AnaSayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Tahmin Oyunu",
              style: TextStyle(color: Colors.black54, fontSize: 36),
            ),
            Image.asset("resimler/zar_resim.png"),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TahminEkrani()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text(
                  "OYUN BAŞLA",
                  style: TextStyle(color: Colors.white),
                ),
              ),
=======
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
>>>>>>> 21612222abb2386b57a622aec3c73635f0a5880e
            ),
          ],
        ),
      ),
<<<<<<< HEAD
=======
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
>>>>>>> 21612222abb2386b57a622aec3c73635f0a5880e
    );
  }
}
