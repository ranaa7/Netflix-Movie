import 'package:flutter/material.dart';
import 'package:movie/screens/home_screen.dart';
import 'package:movie/screens/search_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int value=0;
   List screens=[HomeScreen(),SearchScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Netflix"),
      ),
      body:  screens[value],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        ],
        currentIndex: value,
        onTap: (index){
          setState(() {
            value=index;
          });


        },
      ),
    );
  }
}
