import 'package:badges/badges.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/esports_social_app/user_profile_page.dart';
import 'package:notebook_the_third_story/note_utils.dart';

class ESportMainPage extends StatefulWidget {
  @override
  _ESportMainPageState createState() => _ESportMainPageState();
}

class _ESportMainPageState extends State<ESportMainPage>
    with SingleTickerProviderStateMixin {
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
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: SafeArea(
              left: true,
              top: true,
              right: true,
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 2,
                          width: 42,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 42,
                          decoration: BoxDecoration(color: Colors.white),
                        )
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "e",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: appAccentColor,
                                fontSize: 16)),
                        TextSpan(
                            text: "Sport",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                    CircleAvatar(
                      backgroundColor: appAccentColor,
                      backgroundImage: NetworkImage(dreamwalkerImg),
                    )
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 8 + 16,
            child: Container(
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(color: Colors.black),
              padding: EdgeInsets.only(bottom: 24, top: 24, left: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  DottedBorder(
                    padding: EdgeInsets.all(8),
                    dashPattern: [6],
                    borderType: BorderType.Circle,
                    color: appAccentColor,
                    child: Container(
                      width: 48,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 58,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: appAccentColor, width: 2.5),
                        image: DecorationImage(
                            image: NetworkImage(dreamwalkerImg))),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 58,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
//                        border: Border.all(color: appAccentColor, width: 2.5),
                        image: DecorationImage(
                            image: NetworkImage(dreamwalkerImg))),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 58,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: appAccentColor, width: 2.5),
                        image: DecorationImage(
                            image: NetworkImage(dreamwalkerImg))),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 58,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: appAccentColor, width: 2.5),
                        image: DecorationImage(
                            image: NetworkImage(dreamwalkerImg))),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            top: 2 * (MediaQuery.of(context).size.height / 8) + 26,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 8,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xff1c1f24), // 28 31 36  1c 1f 24
                      child: TabBar(
                        isScrollable: true,
                        indicatorWeight: 1.5,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: appAccentColor,
                        controller: _tabController,
                        tabs: <Widget>[
                          Tab(
                            text: "All games",
                          ),
                          Tab(
                            text: "Counter Strike",
                          ),
                          Tab(
                            text: "League of Legends",
                          ),
                          Tab(
                            text: "Dota",
                          ),
                          Tab(
                            text: "",
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Container(
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          ListView(
                            children: <Widget>[
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 2.4,
                                margin: EdgeInsets.only(
                                    left: 16, right: 16, bottom: 16),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  children: <Widget>[
                                    Positioned(
                                      left: 64,
                                      top: 0,
                                      right: 0,
                                      child: Row(
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Dreamwalker",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "Flutter Developer",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.4),
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.more_vert,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 40,
                                      left: 0,
                                      right: 0,
                                      bottom: 48,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2018/02/18/20/59/portrait-3163518__340.jpg"),
                                              fit: BoxFit.cover,
                                            )),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 16,
                                              top: 16,
                                              child: Container(
                                                height: 34,
                                                width: 34,
                                                decoration: BoxDecoration(
                                                  color: appAccentColor,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.play_arrow,
                                                    size: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 16,
                                              bottom: 16,
                                              child: Container(
                                                height: 24,
                                                width: 42,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24)),
                                                child: Center(
                                                  child: Text(
                                                    "1:18",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return UserProfilePage();
                                          }));
                                        },
                                        child: Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                              color: bgColor,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: appAccentColor,
                                                  width: 1.5),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  dreamwalkerImg,
                                                ),
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "What was that?! Watch this my friends!..",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.favorite_border,
                                                color: appAccentColor,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "12 445",
                                                style: TextStyle(
                                                    color: appAccentColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Icon(
                                                Icons.chat_bubble_outline,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "344",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "3 hours ago",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.2),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 2.4,
                                margin: EdgeInsets.only(
                                    left: 16, right: 16, bottom: 16),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  children: <Widget>[
                                    Positioned(
                                      left: 64,
                                      top: 0,
                                      right: 0,
                                      child: Row(
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Dreamwalker",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "Flutter Developer",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.4),
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.more_vert,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 40,
                                      left: 0,
                                      right: 0,
                                      bottom: 48,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2018/02/18/20/59/portrait-3163518__340.jpg"),
                                              fit: BoxFit.cover,
                                            )),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 16,
                                              top: 16,
                                              child: Container(
                                                height: 34,
                                                width: 34,
                                                decoration: BoxDecoration(
                                                  color: appAccentColor,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.play_arrow,
                                                    size: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 16,
                                              bottom: 16,
                                              child: Container(
                                                height: 24,
                                                width: 42,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24)),
                                                child: Center(
                                                  child: Text(
                                                    "1:18",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        height: 52,
                                        width: 52,
                                        decoration: BoxDecoration(
                                            color: bgColor,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: appAccentColor,
                                                width: 1.5),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                dreamwalkerImg,
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "What was that?! Watch this my friends!..",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.favorite_border,
                                                color: appAccentColor,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "12 445",
                                                style: TextStyle(
                                                    color: appAccentColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Icon(
                                                Icons.chat_bubble_outline,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "344",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "3 hours ago",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.2),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          ListView(
                            children: <Widget>[],
                          ),
                          ListView(
                            children: <Widget>[],
                          ),
                          ListView(
                            children: <Widget>[],
                          ),
                          ListView(
                            children: <Widget>[],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

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
                              color: appAccentColor,
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
