import 'package:flutter/material.dart';

class HotHotelsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Hot packages",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                        )
                      ]),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/11/21/16/21/bed-1846251_960_720.jpg",
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "The westin dhaka",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 16,
                                  ),
                                  Text(
                                    " Kensington place",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$180/night",
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 48,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 8, right: 8, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: RotatedBox(
                              child: Text(
                                "Book now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              quarterTurns: 3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                        )
                      ]),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/11/21/16/21/bed-1846251_960_720.jpg",
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "The westin dhaka",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 16,
                                  ),
                                  Text(
                                    " Kensington place",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$180/night",
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 48,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.access_alarms,
                                          color: Colors.greenAccent,
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 8, right: 8, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: RotatedBox(
                              child: Text(
                                "Book now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              quarterTurns: 3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
