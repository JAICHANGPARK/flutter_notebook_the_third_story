import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.only(left: 24, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "134\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Night",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star_border,
                        size: 14,
                        color: Colors.pink[900],
                      ),
                      Icon(
                        Icons.star_border,
                        size: 14,
                        color: Colors.pink[900],
                      ),
                      Icon(
                        Icons.star_border,
                        size: 14,
                        color: Colors.pink[900],
                      ),
                      Icon(
                        Icons.star_border,
                        size: 14,
                        color: Colors.pink[900],
                      ),
                      Icon(
                        Icons.star_border,
                        size: 14,
                        color: Colors.pink[900],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 72,
                margin: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: Colors.pink[900],
                    borderRadius: BorderRadius.circular(8)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
