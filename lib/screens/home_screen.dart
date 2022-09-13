import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/data/data_list.dart';

import 'detail screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(fontSize: 20, color: Colors.cyan),
                    )),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageMovie.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  title: titleMovie[index],
                                  img: imageMovie[index],
                                  des: descriptionMovie[index],
                                )));
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Image.network(
                                imageMovie[index],
                                width: 180,
                                height: 230,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(titleMovie[index],
                                style:
                                    TextStyle(fontSize: 20, color: Colors.red)),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
