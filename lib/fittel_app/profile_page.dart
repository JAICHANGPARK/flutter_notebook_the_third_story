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
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          left: true,
          right: true,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 24, top: 24),
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
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                    ),
                    SizedBox(height: 20,),
                    Text("Dreamwalker",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 1.5
                    ),),
                    SizedBox(height: 8,),
                    Container(
                      height: 42,
                      margin: EdgeInsets.symmetric(horizontal: 8,
                      vertical: 4),
                      width: MediaQuery.of(context).size.width / 2.4,
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.teal[100],
                            spreadRadius: 1,
                            blurRadius: 2
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Message",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(width: 12,),
                          Icon(Icons.chat_bubble_outline, color: Colors.white,
                          size: 18,),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}





















