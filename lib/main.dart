import 'package:flutter/material.dart';
import 'home_page.dart';
import 'screens/settings_page.dart';
import 'dart:async';

///coded by 0utlaw
///on Nov 2019
///

void main() {
  runApp(MaterialApp(
    // Start the app with the "/" named route. In this case, the app starts
    // on the Splash Screen widget.
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(), //splash screen page
      HomePage.routeName: (context) => HomePage(), //home page
      Settings.routeName: (context) => Settings(),
    },
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, HomePage.routeName);
//      Navigator.push(
//          context,
//          MaterialPageRoute(
//            builder: (context) => HomePage(),
//          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 400,
        ),
      ),
    );
  }
}
