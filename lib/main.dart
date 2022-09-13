import 'package:flutter/material.dart';
import 'package:movie/screens/detail%20screen.dart';
import 'package:movie/screens/test_screen.dart';
import 'package:movie/widgets/bottom_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: BottomNavBarWidget(),
    );
  }
}

