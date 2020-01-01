import 'package:badges/badges.dart';
import 'package:flutter/material.dart';


class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  Color appAccentColor = Color(0xff68FE9A); // 104 254 154 68 fe 9a
  Color bgColor = Color(0xFF24272C); // 36 39 44 24 27 2c
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
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
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 80,

              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.add,color: Colors.black,
                    size: 28,),
                    backgroundColor: appAccentColor,
                    onPressed: () {},
                  ),
                  Container(
                    height: 52,
                    width: MediaQuery.of(context).size.width - 120,
                    padding: EdgeInsets.only(right: 24,left: 24),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Badge(
                          child: Icon(Icons.home,color: Colors.white,),
                          showBadge: false,
                        ),
                        Badge(
                          child: Icon(Icons.search,color: Colors.white,),
                          showBadge: false,
                        ),
                        Badge(
                          child: Icon(Icons.favorite_border,color: Colors.white,),
                          showBadge: true,
                          badgeColor: appAccentColor,
                          badgeContent: Text("2"),
                        ),
                        Badge(
                          child: Icon(Icons.mail_outline,color: Colors.white,),
                          showBadge: true,
                          badgeColor: appAccentColor,
                          badgeContent: Text("3"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}












