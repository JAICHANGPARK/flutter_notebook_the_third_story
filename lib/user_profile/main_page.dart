import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 10,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/11/02/13/01/winter-1791370__340.jpg"),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: MediaQuery.of(context).size.height / 4.5 - 28,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                  right: 24,
                  top: MediaQuery.of(context).size.height / 4.5 + 16,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text(
                            "F",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text(
                            "T",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text(
                            "I",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text(
                            "Y",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 24,
                  top: MediaQuery.of(context).size.height / 3,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Dreamwalker",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Flutter, Android Developer",
                                style:
                                    TextStyle(color: Colors.teal, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Gallery",
                                    style: TextStyle(
                                      color: Colors.teal,
                                    ),
                                  )),
                              Expanded(
                                flex: 4,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/11/16/21/44/christmas-4631194__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/12/06/18/47/bavarian-forest-4677982__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2014/11/29/16/23/christmas-market-550323__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/12/11/07/39/winter-4687676__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/11/16/21/44/christmas-4631194__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/12/06/18/47/bavarian-forest-4677982__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2014/11/29/16/23/christmas-market-550323__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        right: 12,
                                      ),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/12/11/07/39/winter-4687676__340.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          flex: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Testimonials",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                              Expanded(
                                flex: 9,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 12, top: 8, bottom: 0),
                                      width: MediaQuery.of(context).size.width -
                                          140,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ]),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, top: 14, right: 12),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "Anne & John",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "12st Nov. 2019",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, top: 7),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                                                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in repreh",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 6,
                                              child: GridView.count(
                                                crossAxisCount: 2,
                                                padding: EdgeInsets.only(
                                                    left: 12,
                                                    bottom: 12,
                                                    top: 12,
                                                    right: 12),
                                                shrinkWrap: true,
                                                childAspectRatio: 7 / 4,
                                                mainAxisSpacing: 4,
                                                crossAxisSpacing: 5,
                                                children: <Widget>[
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 12, top: 8, bottom: 0),
                                      width: MediaQuery.of(context).size.width -
                                          140,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ]),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, top: 14, right: 12),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "Anne & John",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "12st Nov. 2019",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, top: 7),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                                                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in repreh",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 6,
                                              child: GridView.count(
                                                crossAxisCount: 2,
                                                padding: EdgeInsets.only(
                                                    left: 12,
                                                    bottom: 12,
                                                    top: 12,
                                                    right: 12),
                                                shrinkWrap: true,
                                                childAspectRatio: 7 / 4,
                                                mainAxisSpacing: 4,
                                                crossAxisSpacing: 5,
                                                children: <Widget>[
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 12, top: 8, bottom: 0),
                                      width: MediaQuery.of(context).size.width -
                                          140,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ]),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, top: 14, right: 12),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "Anne & John",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "12st Nov. 2019",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, top: 7),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                                                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in repreh",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 6,
                                              child: GridView.count(
                                                crossAxisCount: 2,
                                                padding: EdgeInsets.only(
                                                    left: 12,
                                                    bottom: 12,
                                                    top: 12,
                                                    right: 12),
                                                shrinkWrap: true,
                                                childAspectRatio: 7 / 4,
                                                mainAxisSpacing: 4,
                                                crossAxisSpacing: 5,
                                                children: <Widget>[
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2019/12/12/13/04/couple-4690635__340.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: MediaQuery.of(context).size.height / 3,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: <Color>[
                              Colors.white.withOpacity(0.1),
                              Colors.white,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.5, 1])),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.teal),
              child: Center(
                child: Text(
                  "Contact Dreamwalker",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
