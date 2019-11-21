import 'package:flutter/material.dart';
import 'screens/settings_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info));
    return Scaffold(
      appBar: AppBar(
        title: Text("Raashin"),
      ),
      body: Center(child: Text('My Home Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          //remove any padding
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("My Drawer"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                //update the state of the app
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () {
                //update the state of the app
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => Settings()),
//                );
              },
            ),
            ListTile(
              title: Text("Account"),
              leading: Icon(Icons.person),
              onTap: () {
                //update the state of the app
                //and close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Orders"),
              leading: Icon(Icons.card_giftcard),
              onTap: () {
                //update the state of the app
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.format_list_bulleted),
              onTap: () {
                //update the state of the app
                Navigator.pop(context);
              },
            ),
            aboutChild,
          ],
        ),
      ),
    );
  }
}
