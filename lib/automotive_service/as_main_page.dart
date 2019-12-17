import 'package:flutter/material.dart';

class ASMainPage extends StatefulWidget {
  @override
  _ASMainPageState createState() => _ASMainPageState();
}

class _ASMainPageState extends State<ASMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home, size: 32,),
                  Container(
                    height: 3,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
