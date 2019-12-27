import 'package:flutter/material.dart';

class DoctorDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
