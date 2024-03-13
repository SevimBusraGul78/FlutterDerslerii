import 'package:flutter/material.dart';

// AlertView, kullanıcıya uyarı mesajı verebildiğimiz bir yapıdır
// Kullanıcıdan alert yardımıyla girdi alabiliriz
// Kullanıcı alert kapamadığı sürece ekranda durur

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  late TextEditingController tfController;

  @override
  void initState() {
    super.initState();
    tfController = TextEditingController();
  }

  @override
  void dispose() {
    tfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.green,
                      title: Text(
                        "Başlık",
                        style: TextStyle(color: Colors.white),
                      ),
                      content: SizedBox(
                        height: 80,
                        child: Column(
                          children: [
                            TextField(
                              controller: tfController,
                              decoration: InputDecoration(
                                hintText: "yazınız",
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            child: Text(
                              "Tamam",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              setState(() {
                                String alinanVeri = tfController.text;
                                print("veri okundu: $alinanVeri");
                              });
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            child: Text(
                              "İptal",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              print("iptal seçildi");
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Basit Alert"),
            ),
          ],
        ),
      ),
    );
  }
}


