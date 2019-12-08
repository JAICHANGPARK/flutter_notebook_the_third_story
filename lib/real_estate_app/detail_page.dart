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
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          left: true,
          right: true,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Icon(Icons.share),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 24, right: 24),
                height: MediaQuery.of(context).size.height / 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Soak up the Rustic Grand at a Deluxe Historic",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.add_location, size: 18,),
                        Text("Forest Park, Illinois, USA",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Placeholder(
                  strokeWidth: 8,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 10,
                child: Placeholder(
                  color: Colors.pink,
                  strokeWidth: 4,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Placeholder(
                  color: Colors.pink,
                  strokeWidth: 4,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Placeholder(
                  color: Colors.pink,
                  strokeWidth: 4,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
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
                  SizedBox(
                    height: 4,
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
                margin:
                    EdgeInsets.only(left: 24, right: 8, top: 12, bottom: 12),
                width: MediaQuery.of(context).size.width / 1.8,
                decoration: BoxDecoration(
                    color: Colors.pink[900],
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Select Date",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
