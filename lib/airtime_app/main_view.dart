import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AirtimeMainPage extends StatefulWidget {
  @override
  _AirtimeMainPageState createState() => _AirtimeMainPageState();
}

class _AirtimeMainPageState extends State<AirtimeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                    color: Colors.brown[100],
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/06/01/00/20/woman-792818__340.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 6,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
