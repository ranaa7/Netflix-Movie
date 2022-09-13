import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {

  List title = [
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
        centerTitle: true,
      ),
      body: Center(
        child:ListView.builder(
          itemCount: 200,
            itemBuilder: (context, index) {
          return Text("item $index");
        }))
      );
  }
  Widget container1(Color color){
    return Container(
      width: 200,
      height: 200,
      color: color,
    );
  }
}
