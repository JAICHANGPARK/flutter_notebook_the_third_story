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
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Hero(
                tag: "img",
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                    child: FlutterLogo(size: 240,
                      style: FlutterLogoStyle.horizontal,
                    ),
                  ),
                ),
              ),
            ),
          ),
















          
        ],
      ),
    );
  }
}
