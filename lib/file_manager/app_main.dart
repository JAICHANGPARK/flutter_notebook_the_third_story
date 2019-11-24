import 'package:badges/badges.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  Widget _buildFolderView() {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Folders",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
            Container(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    margin: EdgeInsets.only(right: 16, bottom: 16, top: 16),
                    width: 120,
                    height: 160,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue[100],
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(0, 4))
                        ],
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.blue[100],
                        ),
                        Text(
                          "My Projects",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "Created 20.02.95",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16, bottom: 16, top: 16),
                    width: 120,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.blue[100],
                        ),
                        Text(
                          "Dribbble",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "Created 20.02.95",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16, bottom: 16, top: 16),
                    width: 120,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.blue[100],
                        ),
                        Text(
                          "Behance",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "Created 20.02.95",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 16,
                top: 32,
                right: 16,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            iconSize: 35,
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                          ),
                          Badge(
                            child: Icon(
                              Icons.notifications_none,
                              size: 32,
                              color: Colors.white,
                            ),
                            position: BadgePosition.topRight(),
                            padding: EdgeInsets.all(8),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Hello",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  "Dreamwalker....",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 52,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  hintText: "Search",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: VerticalDivider(
                                thickness: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  size: 32,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: MediaQuery.of(context).size.height / 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: <Widget>[
                      _buildFolderView(),
                      Expanded(
                        flex: 7,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: <Widget>[
                            Container(
                              height: 72,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Placeholder(),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Placeholder(),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Placeholder(),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 84,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                            Container(
                              height: 84,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Shared",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Container(
                                height: 72,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.deepOrange),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.deepOrange),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.deepOrange),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.deepOrange),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        strokeCap: StrokeCap.round,
                                        color: Colors.black,
                                        strokeWidth: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
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
