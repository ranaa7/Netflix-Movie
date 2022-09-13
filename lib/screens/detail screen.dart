import 'package:flutter/material.dart';
import 'package:movie/data/data_list.dart';

class DetailScreen extends StatelessWidget {
  String title;
  String des;
  String img;

  DetailScreen({required this.title,required this.des,required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Delete screen"),
          leading: Icon(Icons.arrow_back),
        ),
        body: Column(
          children: [
            Container(
              height: 250,
width: double.infinity,
              child: Image.network(
                  img,
                fit: BoxFit.fill,
              ),
            ),
            Text("Title: $title"),
            Text("Description: "),
            Text("$des"
               ),
          ],
        ));
  }
}
