import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                      height: MediaQuery.of(context).size.height / 2.3,
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
                            height: 12,
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
                                Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1.5),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.all(2),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          left: 3,
                                          right: 3,
                                          top: 8,
                                          child: Container(
                                            height: 1.5,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 8,
                                          top: 5,
                                          child: Container(
                                            height: 8,
                                            width: 6,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 3,
                                          right: 3,
                                          bottom: 8,
                                          child: Container(
                                            height: 1.5,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 6,
                                          bottom: 5,
                                          child: Container(
                                            height: 8,
                                            width: 6,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2,
                                              ),
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
