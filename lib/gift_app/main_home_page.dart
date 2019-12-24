import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/gift_app/filter_icon.dart';
import 'package:notebook_the_third_story/gift_app/top_menu_io.dart';

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/12/14/20/03/christmas-balls-4695657_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.darken)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 7,
                    child: Center(
                      child: Text(
                        "Christmas Gifts",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 24),
                      height: MediaQuery.of(context).size.height / 8,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          TopBarItem(
                            isSelected: true,
                          ),
                          TopBarItem(
                            isSelected: false,
                          ),
                          TopBarItem(
                            isSelected: false,
                          ),
                          TopBarItem(
                            isSelected: false,
                          ),
                          TopBarItem(
                            isSelected: false,
                          ),
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 24, top: 24),
                      height: MediaQuery.of(context).size.height / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Mom Gifts",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Filters:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  "Soup; Cream; Cleanser;",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                FilterIcons(),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 6),
                              height: MediaQuery.of(context).size.height / 2.7,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 12, top: 4),
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    decoration: BoxDecoration(
                                     
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 9,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2016/02/19/10/40/soap-1209344__340.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    "Soap",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "\$23.50",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    "Discover More",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 12, top: 4),
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 12, top: 4),
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      )),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    child: Placeholder(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
