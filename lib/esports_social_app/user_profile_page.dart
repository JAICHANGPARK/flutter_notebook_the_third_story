import 'package:flutter/material.dart';


class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Placeholder(),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2,
            bottom: MediaQuery.of(context).size.height / 2.8,
            child: Placeholder(),
          ),
          Positioned(
            left: 0,
            right: 0,
            top:  MediaQuery.of(context).size.height / 1.55,
            bottom: 0,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
