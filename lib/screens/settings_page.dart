import 'package:flutter/material.dart';
import 'package:flutter_raashin/home_page.dart';

class Settings extends StatefulWidget{
  static const routeName = '/settings';
  _SettingsState createState() => _SettingsState();

}

class _SettingsState extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body:Center(
        child: Text(args.message),
      ),
    );
  }

}