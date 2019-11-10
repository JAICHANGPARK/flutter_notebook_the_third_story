import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Hero(
              tag: "food_01",
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/08/09/10/30/tomatoes-1580273__340.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          )
        ],
      ),


    );
  }
}
