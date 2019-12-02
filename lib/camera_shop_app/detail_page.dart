import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  Text("Detail"),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: (){},
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
