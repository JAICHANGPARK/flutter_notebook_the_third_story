import 'package:badges/badges.dart';
import 'package:flutter/material.dart';


class ESportMainPage extends StatefulWidget {
  @override
  _ESportMainPageState createState() => _ESportMainPageState();
}

class _ESportMainPageState extends State<ESportMainPage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  Color appAccentColor = Color(0xff68FE9A); // 104 254 154 68 fe 9a
  Color bgColor = Color(0xFF24272C); // 36 39 44 24 27 2c
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(vsync: this, length: 5);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: <Widget>[
          //Bottom Navigation Bar
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
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 28,
                    ),
                    backgroundColor: appAccentColor,
                    onPressed: () {},
                  ),
                  Container(
                    height: 52,
                    width: MediaQuery.of(context).size.width - 120,
                    padding: EdgeInsets.only(right: 24, left: 24),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => ESportMainPage()));
                          },
                          child: Badge(
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            showBadge: false,
                          ),
                        ),
                        Badge(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          showBadge: false,
                        ),
                        Badge(
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          showBadge: true,
                          badgeColor: appAccentColor,
                          badgeContent: Text("2"),
                        ),
                        Badge(
                          child: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
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
