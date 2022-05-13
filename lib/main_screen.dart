import 'package:book_ui/screens/home/home.dart';
import 'package:book_ui/screens/test_screens/test1.dart';
import 'package:book_ui/screens/test_screens/test2.dart';
import 'package:book_ui/screens/test_screens/test3.dart';
import 'package:flutter/material.dart';

import 'commons/colors.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    Home(),
    Test1(),
    Test1(),
    Test2(),
    Test3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade200,
        selectedIconTheme: IconThemeData(color: kFont),
        selectedItemColor: Colors.pinkAccent.shade700,
        unselectedItemColor: Colors.grey.shade400,
        showUnselectedLabels: false,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_voice_outlined), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'profile'),
        ],
      ),
    );
  }
}
