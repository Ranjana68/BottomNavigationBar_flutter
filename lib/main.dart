import 'package:flutter/material.dart';
import 'Home.dart';
import 'Work.dart';
import 'Settings.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  createState()
  {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp>{
  int _selectedIndex=0;
  List<Widget> _widgetOptions=<Widget>[
    /*Text('HOME PAGE HERE',style: TextStyle(fontSize: 36.0),),
    Text('WORK PAGE HERE',style: TextStyle(fontSize: 36.0),),
    Text('SETTINGS',style: TextStyle(fontSize: 36.0),),
     */
    HomePage(),
    WorkPage(),
    SettingsPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Bottom Navigation Bar'),),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text('Work'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}