import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          left: true,
          right: true,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 1.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                    )),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 24, top: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 18,
                            ),
                            onPressed: () {
                              print("back button pressed");
                            },
                          ),
                          Badge(
                            child: Icon(
                              Icons.chat,
                            ),
                            showBadge: true,
                            badgeContent: Text(
                              "2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Dreamwalker",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                letterSpacing: 1.5),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 42,
                            margin: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            width: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                                color: Colors.teal[200],
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.teal[100],
                                      spreadRadius: 1,
                                      blurRadius: 2)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Message",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 14,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Programs",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Flutter",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            thickness: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Episode",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "295",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        height: MediaQuery.of(context).size.height / 6.2,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.teal[50],
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.teal)),
                                padding: EdgeInsets.only(
                                    left: 12, top: 12, bottom: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.launch),
                                    Spacer(),
                                    Text(
                                      "Weight",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "75kg",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.orange[50],
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.orange)),
                                padding: EdgeInsets.only(
                                    left: 12, top: 12, bottom: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.launch),
                                    Spacer(),
                                    Text(
                                      "Height",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "175cm",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.purple[50],
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.purple)),
                                padding: EdgeInsets.only(
                                    left: 12, top: 12, bottom: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.launch),
                                    Spacer(),
                                    Text(
                                      "Body fat",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "12.2%",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.red[50],
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.red)),
                                padding: EdgeInsets.only(
                                    left: 12, top: 12, bottom: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.launch),
                                    Spacer(),
                                    Text(
                                      "Blood type",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "A",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                      height: MediaQuery.of(context).size.height / 16,
                      child: Center(
                        child: Text(
                          "VIEW HEALTH",
                          style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height / 5,
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      height: MediaQuery.of(context).size.height / 8,
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Placeholder()),
                  Container(
                      height: MediaQuery.of(context).size.height / 8,
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Placeholder())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
