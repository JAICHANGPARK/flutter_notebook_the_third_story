import 'package:flutter/material.dart';


class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/12/14/20/03/christmas-balls-4695657_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 7,
                    child: Placeholder(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    child: Placeholder(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    child: Placeholder(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    child: Placeholder(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
