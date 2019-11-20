import 'package:flutter/material.dart';

///coded by 0utlaw
///on Nov 2019
///

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "hello Raashin",
      ),
    );
  }

}
