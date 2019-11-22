import 'package:flutter/material.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height / 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  
                )
              ),
            ),
          )

        ],
      ),
    );
  }
}
