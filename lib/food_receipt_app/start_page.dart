import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
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
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45),
                  BlendMode.darken)
                )
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 130,
            child: Column(
              children: <Widget>[

              ],
            ),
          )

        ],
      ),
    );
  }
}


















