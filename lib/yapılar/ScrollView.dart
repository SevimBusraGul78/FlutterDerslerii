import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollView extends StatefulWidget {
  const ScrollView({super.key});

  @override
  State<ScrollView> createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 300,height: 500,color:Colors.red),
              Container(width: 300,height: 500,color: Colors.blue),
              Container(width: 300 ,height: 500,color:Colors.grey),
            ],
          ),
        ),

      ),
    );


  }
}
