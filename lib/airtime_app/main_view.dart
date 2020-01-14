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
                height: MediaQuery.of(context).size.height / 5.5,
                decoration: BoxDecoration(
                  color: Colors.brown[100],
                ),
              ),
            ),
            Positioned(
              top:  MediaQuery.of(context).size.height / 5.5,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}













