import 'package:flutter/material.dart';
import 'screens/settings_page.dart';
import 'tabs/home_tab.dart';
import 'tabs/favorite_tab.dart';
import 'tabs/cart_tab.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin {


  //set up a tab controller
  TabController controller;

  @override
  void initState(){
    super.initState();
    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    //dispose of the tab controller
    controller.dispose();
    super.dispose();
  }


  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          // set icon to the tab
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.favorite),
        ),
        Tab(
          icon: Icon(Icons.shopping_cart),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }




  @override
  Widget build(BuildContext context) {
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "Raashin",
        applicationVersion: "v1.0.0",
        icon: Icon(Icons.info));

    return Scaffold(
      appBar: AppBar(
        title: Text("Raashin"),
          // Set the background color of the App Bar
          backgroundColor: Colors.blue,
          // Set the bottom property of the Appbar to include a Tab Bar
          bottom: getTabBar(),
      ),
        body: getTabBarView(<Widget>[HomeTab(), FavoriteTab(), CartTab()]),
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
//                Navigator.pushNamed(context, '/settings');

                Navigator.pushNamed(
                  context,
                  Settings.routeName,
                  arguments: ScreenArguments(
                    "passed arguments",
                    "arguments passed in navigator function",
                  ),
                );
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

class ScreenArguments{
  final String title;
  final String message;

  ScreenArguments(this.title,this.message);
}
