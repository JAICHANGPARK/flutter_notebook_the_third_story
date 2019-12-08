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
                padding: EdgeInsets.only(left: 24, right: 48),
                height: MediaQuery.of(context).size.height / 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Soak up the Rustic Grand at a Deluxe Historic",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.add_location,
                          size: 18,
                          color: Colors.pink[900],
                        ),
                        Text(
                          "Forest Park, Illinois, USA",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 13.5,
                padding: EdgeInsets.only(left: 12),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 100,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            color: Colors.pink[900],
                            size: 20,
                          ),
                          Text(
                            "3 Guests",
                            style: TextStyle(color: Colors.pink[900]),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.beach_access,
                            color: Colors.pink[900],
                            size: 20,
                          ),
                          Text(
                            "2 Bed",
                            style: TextStyle(
                              color: Colors.pink[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.airline_seat_legroom_extra,
                            color: Colors.pink[900],
                            size: 20,
                          ),
                          Text(
                            "1 Bathroom",
                            style: TextStyle(color: Colors.pink[900]),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                          ),
                          Text("3 Guests"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Container(
                height: MediaQuery.of(context).size.height / 5.5,
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("About",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),),
                    Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
                        " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                        "Ut enim ad minim veniam, quis nostrud exercitation ullamco "
                        "laboris nisi ut aliquip ex ea commodo consequat.",style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                    ),),

                  ],
                )
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Location",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.pink,
                        child: Center(

                          child: Text("Maps Area"),
                        ),
                      ),
                    )
                  ],
                )
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
