import 'package:flutter/material.dart';

class HotelDetailPage extends StatefulWidget {
  @override
  _HotelDetailPageState createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Placeholder(),
          ),
          Expanded(
            flex: 4,
            child: Placeholder(),
          ),
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
          Expanded(
            flex: 3,
            child: Placeholder(),
          ),
          Expanded(
            flex: 3,
            child: Placeholder(),
          ),
        ],
      )
    );
  }
}
